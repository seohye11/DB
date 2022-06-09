--분산 표준편차글 VARIANCE/STDDEV
--분산(variance)은 관측값에서 평균을 뺀 값을 제곱하고, 그것을 모두 더한
--후 전체 개수로 나눠서 구한다. 즉, 차이값의 제곱의 평균이다. 관측값에서 
--평균을 뺀 값인 편차를 모두 더하면 0이 나오므로 제곱해서 더한다

SELECT VARIANCE(sal),
       STDDEV(sal),
       AVG(NVL(sal,0))
FROM emp
;