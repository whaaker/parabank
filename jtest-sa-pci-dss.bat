@echo off
IF NOT EXIST set-vars.bat (
  echo "Incorrect usage ... running script in wrong directory, cannot find set-vars.bat"
  GOTO End
)
call set-vars

echo ===================================================================
echo Running PCI DSS 3.2 Test Configuration against build.id=%BUILD_ID%
echo ===================================================================

echo **1/1** Execute Static Analysis: PCI DSS 3.2
call mvn jtest:jtest -Djtest.publish=true -Djtest.config="jtest.dtp://PCI DSS 3.2" -Dmaven.test.skip=true -Dmaven.test.failure.ignore=true -Dproperty.dtp.project=%DTP_PROJECT% -Djtest.showsettings=true -Djtest.report=%REPORT_DIR%\jtest-sa -Dproperty.console.verbosity.level=high -Dproperty.build.id=%BUILD_ID% -Djacoco.skip=true > %LOG_DIR%\jtest-pci-dss-%RUN_TIME%.log 2>&1

echo =================================================================
echo Finished PCI DSS 3.2 Test Configuration of build.id=%BUILD_ID%
echo =================================================================

:End
