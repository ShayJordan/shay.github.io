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
<div style="max-width:auto; margin:auto;">
	<html lang="en">
	<head>
	  <meta charset="UTF-8">
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
	  <strong>Select Sets by Rank</strong>
	  <label><input type="radio" name="category" class="category" data-category="white"> White Belt</label>
	  <label><input type="radio" name="category" class="category" data-category="yellow"> Yellow Belt</label>
	  <label><input type="radio" name="category" class="category" data-category="blue"> Blue Belt</label>
	  <label><input type="radio" name="category" class="category" data-category="red"> Red Belt</label>
	  <label><input type="radio" name="category" class="category" data-category="brown"> Brown Belt</label>
	  <label><input type="radio" name="category" class="category" data-category="dbn"> Dahn Bo Nim</label>
	  <label><input type="radio" name="category" class="category" data-category="jkn"> Jo Kyo Nim</label>
	  <label><input type="radio" name="category" class="category" data-category="ksn"> Kyo Sa Nim</label>
	  <label><input type="radio" name="category" class="category" data-category="psbn"> Pu Sa Bum Nim</label>
	</div>

	<div class="item-list">
	  <strong>or Select Specific Sets</strong>
	  <label><input type="checkbox" class="item" data-limit="5" value="Sohn Ppae Ki"> Sohn Ppae Ki (5)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Ki Bohn Soo"> Ki Bohn Soo (15)</label>
	  <label><input type="checkbox" class="item" data-limit="11" value="Sohn Mohk Soo"> Sohn Mohk Soo (11)</label>
	  <label><input type="checkbox" class="item" data-limit="13" value="Eui Bohk Soo"> Eui Bohk Soo (13)</label>
	  <label><input type="checkbox" class="item" data-limit="6" value="Ahn Sohn Mohk Soo"> Ahn Sohn Mohk Soo (6)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Maek Chi Ki"> Maek Chi Ki (15)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Maek Cha Ki"> Maek Cha Ki (15)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Joo Muhk Maga Ki Bohn Soo"> Joo Muhk Maga Ki Bohn Soo (15)</label>
	  <label><input type="checkbox" class="item" data-limit="7" value="Joong Geup Sohn Mohk Soo"> Joong Geup Sohn Mohk Soo (7)</label>
	  <label><input type="checkbox" class="item" data-limit="20" value="Ahp Eui Bohk Soo"> Ahp Eui Bohk Soo (20)</label>
	  <label><input type="checkbox" class="item" data-limit="23" value="Dee Eui Bohk Soo"> Dee Eui Bohk Soo (23)</label>
	  <label><input type="checkbox" class="item" data-limit="13" value="Kwahn Juhl Ki"> Kwahn Juhl Ki (10)</label>
	  <label><input type="checkbox" class="item" data-limit="13" value="Too Ki"> Too Ki (10)</label>
	  <label><input type="checkbox" class="item" data-limit="5" value="Mohk Joh Leu Ki"> Mohk Joh Leu Ki (5)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Bahn Too Ki"> Bahn Too Ki (10)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Yahng Sohn Mohk Soo"> Yahng Sohn Mohk Soo (15)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Ssahng Soo"> Ssahng Soo (15)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Dahn Doh Mahk Ki"> Dahn Doh Mahk Ki (15)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Ki Bohn Bohn"> Ki Bohn Bohn (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Gahk Doh Bub"> Gahk Doh Bub (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Juhn Hwahn Bub"> Juhn Hwahn Bub (10)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Goh Geup Sohn Mohk Soo"> Goh Geup Sohn Mohk Soo (15)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Goh Geup Eui Bohk Soo"> Goh Geup Eui Bohk Soo (15)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Jah Ki"> Jah Ki (15)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Wah Ki"> Wah Ki (15)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Ee In Jeh Ahp Sool"> Ee In Jeh Ahp Sool (10)</label>
	  <label><input type="checkbox" class="item" data-limit="20" value="Jahp Ki"> Jahp Ki (20)</label>
	  <label><input type="checkbox" class="item" data-limit="15" value="Johk Bahng Uh Sool"> Johk Bahng Uh Sool (15)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Keun Dae Ryuhn"> Keun Dae Ryuhn (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Jee Ahp Sool"> Jee Ahp Sool (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Yuhn Heng Sool"> Yuhn Heng Sool (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Po Bahk Sool"> Po Bahk Sool (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Jee Peng Ee Sool"> Jee Peng Ee Sool (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Pyhung Soo"> Pyhung Soo (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Bu Chae Sool"> Bu Chae Sool (10)</label>
	  <label><input type="checkbox" class="item" data-limit="10" value="Bahk Sool"> Bahk Sool (10)</label>
	</div>

	<label>
	  <input type="checkbox" id="perItemMode" onchange="togglePerItemInput()"> Generate specific number of techniques per set
	</label>
	<div id="perItemInputs" style="display: none;">
	  <label>How many techniques per set?
		<input type="number" id="perItemCount" min="1" value="1">
	  </label>
	  <label>
		<input type="checkbox" id="randomOrder"> Randomise item order
	  </label>
	</div>

	<div id="singleCountInput">
	  <label for="numberToGenerate">How many techniques?</label>
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
		white: ['Sohn Ppae Ki', 'Ki Bohn Soo'],
		yellow: ['white', 'Sohn Mohk Soo'],
		blue: ['yellow', 'Eui Bohk Soo'],
		red: ['blue', 'Ahn Sohn Mohk Soo', 'Maek Chi Ki'],
		brown: ['red', 'Maek Cha Ki', 'Joo Muhk Maga Ki Bohn Soo'],
		dbn: ['brown', 'Joong Geup Sohn Mohk Soo', 'Ahp Eui Bohk Soo', 'Dee Eui Bohk Soo', 'Kwahn Juhl Ki', 'Too Ki', 'Mohk Joh Leu Ki', 'Bahn Too Ki', 'Yahng Sohn Mohk Soo', 'Ssahng Soo', 'Dahn Doh Mahk Ki'],
		jkn: ['dbn', 'Ki Bohn Bohn', 'Gahk Doh Bub', 'Juhn Hwahn Bub', 'Goh Geup Sohn Mohk Soo', 'Goh Geup Eui Bohk Soo', 'Jah Ki', 'Wah Ki', 'Ee In Jeh Ahp Sool', 'Jahp Ki', 'Johk Bahng Uh Sool', 'Keun Dae Ryuhn'],
		ksn: ['jkn', 'Jee Ahp Sool', 'Yuhn Heng Sool', 'Po Bahk Sool', 'Jee Peng Ee Sool'],
		psbn: ['ksn', 'Pyhung Soo', 'Bu Chae Sool', 'Bahk Sool']
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