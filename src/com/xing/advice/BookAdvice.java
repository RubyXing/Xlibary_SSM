package com.xing.advice;/*
 * @author Xingqilin
 *
 */

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class BookAdvice {

    @Pointcut("execution()")
    public void pointCut() {

    }
}
