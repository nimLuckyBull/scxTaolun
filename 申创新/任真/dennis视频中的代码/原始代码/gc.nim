gcDisable()
while true:
  gameLogic()
  renderFrame()
  gcStep(us=leftTime)
  sleep(restTime)
