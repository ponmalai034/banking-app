<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Date for Project Chart</title>
</head>
<body>
    <h1>Select Date for Project Chart</h1>
    <form action="ProjectChartServlet" method="get">
        <label for="type">Chart Type:</label>
        <select id="type" name="type">
            <option value="daily">Daily</option>
            <option value="weekly">Weekly</option>
            <option value="monthly">Monthly</option>
        </select><br><br>

        <div id="dailySelection" style="display: none;">
            <label for="date">Date:</label>
            <input type="date" id="date" name="date">
        </div>

        <div id="weeklySelection" style="display: none;">
            <label for="month">Month:</label>
            <input type="month" id="month" name="month">
        </div>

        <div id="monthlySelection" style="display: none;">
            <label for="year">Year:</label>
            <input type="number" id="year" name="year" min="2000" max="2100">
        </div>

        <label for="project">Project:</label>
        <input type="text" id="project" name="project" required><br><br>

        <input type="submit" value="Generate Chart">
    </form>

    <script>
        document.getElementById('type').addEventListener('change', function() {
            document.getElementById('dailySelection').style.display = 'none';
            document.getElementById('weeklySelection').style.display = 'none';
            document.getElementById('monthlySelection').style.display = 'none';

            if (this.value === 'daily') {
                document.getElementById('dailySelection').style.display = 'block';
            } else if (this.value === 'weekly') {
                document.getElementById('weeklySelection').style.display = 'block';
            } else if (this.value === 'monthly') {
                document.getElementById('monthlySelection').style.display = 'block';
            }
        });
    </script>
</body>
</html>
