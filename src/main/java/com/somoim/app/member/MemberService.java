package com.somoim.app.member;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.member.role.RoleDTO;
import com.somoim.app.util.FileManager;

@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;

	public int setPasswordUpdate(MemberDTO memberDTO)throws Exception{
		int result = 0;
		result = memberDAO.setPasswordUpdate(memberDTO);
		return result;
	}

	public int setUpdate(MemberDTO memberDTO,MultipartFile attachs)throws Exception{
		int result = 0;

		result = memberDAO.setUpdate(memberDTO);

		if(attachs.isEmpty()) {
			return result;
		}
		String path = servletContext.getRealPath("/resources/upload/member");
		System.out.println(path);
		String fileName = fileManager.fileSave(path, attachs);
		ProfileDTO profileDTO = new ProfileDTO();
		profileDTO.setFileName(fileName);
		profileDTO.setOriName(attachs.getOriginalFilename());
		profileDTO.setUserName(memberDTO.getUserName());

		result = memberDAO.setProfileJoin(profileDTO);

		return result;
	}

	public int setjoin(MemberDTO memberDTO,MultipartFile attachs)throws Exception {
		int result = 0 ;
		String Key = memberDTO.creatCustomerKey();
		memberDTO.setCustomerKey(Key);
		result = memberDAO.setJoin(memberDTO);
		result = memberDAO.setMemberRole(memberDTO);
		if(attachs.isEmpty()) {
			return result;
		}
		String path = servletContext.getRealPath("/resources/upload/member");
		System.out.println(path);
		String fileName = fileManager.fileSave(path, attachs);
		ProfileDTO profileDTO = new ProfileDTO();
		profileDTO.setFileName(fileName);
		profileDTO.setOriName(attachs.getOriginalFilename());
		profileDTO.setUserName(memberDTO.getUserName());

		result = memberDAO.setProfileJoin(profileDTO);

		return result;
	}
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		MemberDTO dto = memberDAO.getDetail(memberDTO);

		
		if(dto!=null) {
			if(dto.getPassword().equals(memberDTO.getPassword())) {

				RoleDTO role = dto.getRoleDTO().get(0);
				
				memberDTO.setNickName(dto.getNickName());
				memberDTO.setProfile(dto.getProfile());
				memberDTO.setLoginNum(dto.getLoginNum());
				memberDTO.setEmail(dto.getEmail());				
				
				return memberDTO;
				
			}else {
				dto=null;
			}
		}
		return dto;
	}
	

	public MemberDTO getMypage(MemberDTO memberDTO)throws Exception{
		return memberDAO.getDetail(memberDTO);
	}
	
	public MemberDTO submitJoinApp(MemberDTO memberDTO)throws Exception{
		
		MemberDTO dto = memberDAO.getDetail(memberDTO);
		System.out.println("dto확인"+dto);
		System.out.println("memberDTO확인"+memberDTO.getUserName());
		if(dto !=null) {
			
			memberDTO.setNickName(dto.getNickName());
			memberDTO.setProfile(dto.getProfile());
			memberDTO.setLoginNum(dto.getLoginNum());
			memberDTO.setRoleDTO(dto.getRoleDTO());
			return memberDTO;
		}
		return dto;
		
	}
	
}
