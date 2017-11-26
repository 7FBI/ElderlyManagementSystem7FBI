package com.controller.backstage.statistics.oldusers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.OldUsersService;

@Controller
@RequestMapping("/statistics/backStageOluser")
public class OldUserStatisticsController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;

}
