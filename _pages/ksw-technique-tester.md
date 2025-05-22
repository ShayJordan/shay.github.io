---
permalink: /ksw-technique-tester/
title: "Kuk Sool Won Technique Tester"
excerpt: "A random generator for Kuk Sool Won self-defense techniques."
header:
  overlay_image: home.JPG
  overlay_filter: rgba(51, 51, 90, 0.75)
author_profile: true
og_image: og_image.png
---
LaTeX Files
------
**Important!** In order to use the `.tex` files linked below, you must also download the associated `.cls` file and either put it in the same folder as the `.tex` file, or in your TeX system files.
{: .notice}


{% raw %}
<div style="max-width: 800px; margin:auto;">
	<!DOCTYPE html>
	<html lang="en">
	<head>
	  <meta charset="UTF-8">
	  <title>Random Generator with Syncing Categories</title>
	  <style>
		body { font-family: Arial; margin: 20px; }
		label { display: block; margin-bottom: 5px; }
		.item-list, .category-list { margin-bottom: 20px; }
		#output {
		  font-size: 1.8em;
		  font-weight: bold;
		  margin: 30px 0;
		  text-align: center;
		  min-height: 40px;
		}
		#feedback-buttons button {
		  font-size: 3em;
		  padding: 20px 30px;
		  margin: 0 20px;
		  cursor: pointer;
		}
		#start-button {
		  font-size: 1.5em;
		  padding: 15px 30px;
		  cursor: pointer;
		}
		#summary {
		  margin-top: 30px;
		  font-size: 1.2em;
		}
		.correct { color: green; }
		.incorrect { color: red; }
	  </style>
	</head>
	<body>

	<h2>Random Item Generator</h2>

	<div class="category-list">
	  <strong>Categories (select one):</strong>
	  <label><input type="radio" name="category" class="category" data-category="upper"> Upper Body</label>
	  <label><input type="radio" name="category" class="category" data-category="core"> Core</label>
	  <label><input type="radio" name="category" class="category" data-category="strength"> Strength (Upper + Core)</label>
	  <label><input type="radio" name="category" class="category" data-category="all"> Select All</label>
	</div>

	<div class="item-list">
	  <strong>Items:</strong>
	  <label><input type="checkbox" class="item" data-limit="5" value="Push-ups"> Push-ups (limit 5)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Squats"> Squats (limit 10)</label>
	  <label><input type="checkbox" class="item" data-limit="3" value="Burpees"> Burpees (limit 3)</label>
	  <label><input type="checkbox" class="item" data-limit="8" value="Sit-ups"> Sit-ups (limit 8)</label>
	  <label><input type="checkbox" class="item" data-limit="6" value="Plank"> Plank (limit 6)</label>
	  <label><input type="checkbox" class="item" data-limit="7" value="Pull-ups"> Pull-ups (limit 7)</label>
	</div>

	<label>
	  <input type="checkbox" id="perItemMode" onchange="togglePerItemInput()"> Generate multiple numbers per item
	</label>
	<div id="perItemInputs" style="display: none;">
	  <label>How many numbers per item:
		<input type="number" id="perItemCount" min="1" value="1">
	  </label>
	  <label>
		<input type="checkbox" id="randomOrder"> Randomise item order
	  </label>
	</div>

	<div id="singleCountInput">
	  <label for="numberToGenerate">How many items to generate:</label>
	  <input type="number" id="numberToGenerate" min="1" value="1">
	</div>

	<br>
	<button id="start-button" onclick="startGeneration()">Start</button>

	<div id="output"></div>

	<div id="feedback-buttons" style="text-align: center; display: none;">
	  <button onclick="rateItem('correct')">👍</button>
	  <button onclick="rateItem('incorrect')">👎</button>
	</div>

	<div id="summary"></div>

	<script>
	  const categoryMap = {
		upper: ['Push-ups', 'Pull-ups'],
		core: ['Sit-ups', 'Plank'],
		lower: ['Squats'],
		full: ['Burpees'],
		strength: ['upper', 'core'],
		all: ['strength', 'lower', 'full']
	  };

	  function getItemsInCategory(category, visited = new Set()) {
		if (visited.has(category)) return [];
		visited.add(category);
		const entries = categoryMap[category] || [];
		let result = [];

		entries.forEach(entry => {
		  if (categoryMap[entry]) {
			result = result.concat(getItemsInCategory(entry, visited));
		  } else {
			result.push(entry);
		  }
		});

		return result;
	  }

	  function togglePerItemInput() {
		const perItemChecked = document.getElementById('perItemMode').checked;
		document.getElementById('perItemInputs').style.display = perItemChecked ? 'block' : 'none';
		document.getElementById('singleCountInput').style.display = perItemChecked ? 'none' : 'block';
	  }

	  document.querySelectorAll('.category').forEach(catRadio => {
		catRadio.addEventListener('change', function () {
		  const category = this.dataset.category;
		  const items = getItemsInCategory(category);
		  document.querySelectorAll('.item').forEach(itemCheckbox => {
			itemCheckbox.checked = items.includes(itemCheckbox.value);
		  });
		});
	  });

	  document.querySelectorAll('.item').forEach(itemCheckbox => {
		itemCheckbox.addEventListener('change', updateCategorySelectionFromItems);
	  });

	  function updateCategorySelectionFromItems() {
		const selected = Array.from(document.querySelectorAll('.item:checked')).map(cb => cb.value);
		const selectedSorted = selected.slice().sort().join('|');

		let matched = false;
		document.querySelectorAll('.category').forEach(catRadio => {
		  const category = catRadio.dataset.category;
		  const items = getItemsInCategory(category).sort().join('|');
		  if (items === selectedSorted) {
			catRadio.checked = true;
			matched = true;
		  }
		});

		if (!matched) {
		  document.querySelectorAll('.category').forEach(catRadio => {
			catRadio.checked = false;
		  });
		}
	  }

	  let generatedItems = [];
	  let currentIndex = 0;
	  let userFeedback = [];

	  function startGeneration() {
		const itemCheckboxes = document.querySelectorAll('.item-list input[type="checkbox"]:checked');
		const perItemMode = document.getElementById('perItemMode').checked;
		const randomOrder = document.getElementById('randomOrder').checked;

		if (itemCheckboxes.length === 0) {
		  alert("Please select at least one item.");
		  return;
		}

		let selectedItems = [];
		itemCheckboxes.forEach(cb => {
		  selectedItems.push({ item: cb.value, limit: parseInt(cb.dataset.limit) });
		});

		generatedItems = [];

		if (perItemMode) {
		  const countPerItem = parseInt(document.getElementById('perItemCount').value);
		  if (isNaN(countPerItem) || countPerItem < 1) {
			alert("Please enter a valid per-item number.");
			return;
		  }
		  selectedItems.forEach(entry => {
			for (let i = 0; i < countPerItem; i++) {
			  const num = Math.floor(Math.random() * entry.limit) + 1;
			  generatedItems.push(`${entry.item}: ${num}`);
			}
		  });
		} else {
		  const totalCount = parseInt(document.getElementById('numberToGenerate').value);
		  if (isNaN(totalCount) || totalCount < 1) {
			alert("Please enter a valid number of items.");
			return;
		  }
		  for (let i = 0; i < totalCount; i++) {
			const entry = selectedItems[Math.floor(Math.random() * selectedItems.length)];
			const num = Math.floor(Math.random() * entry.limit) + 1;
			generatedItems.push(`${entry.item}: ${num}`);
		  }
		}

		if (randomOrder) {
		  generatedItems = shuffleArray(generatedItems);
		}

		userFeedback = [];
		currentIndex = 0;
		document.getElementById('summary').innerHTML = '';
		document.getElementById('feedback-buttons').style.display = 'block';
		showCurrentItem();
	  }

	  function showCurrentItem() {
		if (currentIndex < generatedItems.length) {
		  document.getElementById('output').innerText = generatedItems[currentIndex];
		} else {
		  document.getElementById('feedback-buttons').style.display = 'none';
		  showSummary();
		}
	  }

	  function rateItem(feedback) {
		userFeedback.push({ text: generatedItems[currentIndex], feedback });
		currentIndex++;
		showCurrentItem();
	  }

	  function showSummary() {
		const correctItems = userFeedback.filter(entry => entry.feedback === 'correct');
		const incorrectItems = userFeedback.filter(entry => entry.feedback === 'incorrect');

		let summaryHTML = '';

		if (correctItems.length > 0) {
		  summaryHTML += `<h3>Correct</h3><ul>`;
		  correctItems.forEach(entry => {
			summaryHTML += `<li class="correct">${entry.text}</li>`;
		  });
		  summaryHTML += `</ul>`;
		}

		if (incorrectItems.length > 0) {
		  summaryHTML += `<h3>Incorrect</h3><ul>`;
		  incorrectItems.forEach(entry => {
			summaryHTML += `<li class="incorrect">${entry.text}</li>`;
		  });
		  summaryHTML += `</ul>`;
		}

		document.getElementById('output').innerText = "All items rated.";
		document.getElementById('summary').innerHTML = summaryHTML;
	  }

	  function shuffleArray(array) {
		for (let i = array.length - 1; i > 0; i--) {
		  const j = Math.floor(Math.random() * (i + 1));
		  [array[i], array[j]] = [array[j], array[i]];
		}
		return array;
	  }
	</script>

	</body>
	</html>
</div>
{% endraw %}