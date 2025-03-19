view wave 
wave clipboard store
wave create -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/tb_pratica_6/M4 
wave create -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/tb_pratica_6/M3 
wave create -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/tb_pratica_6/M2 
wave create -pattern clock -initialvalue 0 -period 800ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/tb_pratica_6/M1 
WaveCollapseAll -1
wave clipboard restore
