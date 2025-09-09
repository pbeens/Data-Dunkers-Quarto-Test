@echo off
REM Run this while `quarto preview` is active on port 5500

REM Output PDF filename
set OUTPUT=site.pdf

REM List of site pages to include
set PAGES= ^
  http://localhost:5500/index.html ^
  http://localhost:5500/module-1-welcome-to-data-dunkers/welcome.html ^
  http://localhost:5500/module-1-welcome-to-data-dunkers/what-is-data-dunkers.html ^
  http://localhost:5500/module-1-welcome-to-data-dunkers/flavors-of-the-program.html ^
  http://localhost:5500/module-1-welcome-to-data-dunkers/the-fundamentals-game-plan.html ^
  http://localhost:5500/module-1-welcome-to-data-dunkers/creating-your-playbook.html ^
  http://localhost:5500/module-2-step-into-the-game-experience-like-a-student/welcome-to-the-court.html ^
  http://localhost:5500/module-2-step-into-the-game-experience-like-a-student/data-is-everywhere.html ^
  http://localhost:5500/module-2-step-into-the-game-experience-like-a-student/quick-timeout-look-at-jupyter-notebook.html ^
  http://localhost:5500/module-2-step-into-the-game-experience-like-a-student/labyrinth-activity.html ^
  http://localhost:5500/module-2-step-into-the-game-experience-like-a-student/to-understanding-the-instructional-approach.html

REM Run wkhtmltopdf with all pages
wkhtmltopdf %PAGES% %OUTPUT%

echo.
echo PDF created: %OUTPUT%
pause
