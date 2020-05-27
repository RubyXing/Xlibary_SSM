package com.xing.advice;/*
 * @author Xingqilin
 *
 */

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class UserAdvice {

    @Pointcut("execution(* com.xing.controller.UserController.register(..))")
    public void registerPoint() {
    }

    @Pointcut("execution(* com.xing.controller.UserController.userModify(..))")
    public void modifyPoint() {
    }


}
