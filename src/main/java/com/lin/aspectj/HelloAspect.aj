package com.lin.aspectj;

public aspect HelloAspect {

    pointcut HelloWorldPointCut() : execution(* com.lin.aspectj.*.*(..));

    Object around():HelloAspect.HelloWorldPointCut(){
        System.out.println("asp");
        proceed();
        return new Object();
    }
}
