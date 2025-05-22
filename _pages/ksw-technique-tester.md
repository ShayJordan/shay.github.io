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
	  <label><input type="checkbox" class="item" data-limit="13" value="Kwahn Juhl Ki"> Kwahn Juhl Ki (13)</label>
	  <label><input type="checkbox" class="item" data-limit="13" value="Too Ki"> Too Ki (13)</label>
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

	<button id="start-button">Start</button>

	<div id="output"></div>

	<div id="feedback-buttons" style="display:none;">
	  <button id="btn-correct" title="Correct (Thumbs Up)">👍</button>
	  <button id="btn-incorrect" title="Incorrect (Thumbs Down)">👎</button>
	</div>

	<div id="summary"></div>

	<script>
	// Global variables to hold state
	let generatedItems = [];
	let currentIndex = 0;
	let userFeedback = [];

	function togglePerItemInput() {
	  const perItemMode = document.getElementById('perItemMode').checked;
	  document.getElementById('perItemInputs').style.display = perItemMode ? 'block' : 'none';
	  document.getElementById('singleCountInput').style.display = perItemMode ? 'none' : 'block';
	}

	// Generate the items list based on checked categories or sets
	function generateItemList() {
	  const categoryRadio = document.querySelector('input[name="category"]:checked');
	  const checkedItems = Array.from(document.querySelectorAll('.item:checked'));
	  const perItemMode = document.getElementById('perItemMode').checked;
	  const perItemCount = parseInt(document.getElementById('perItemCount').value, 10) || 1;
	  const randomOrder = document.getElementById('randomOrder').checked;
	  let itemList = [];

	  // Helper to generate a list of technique strings for a set and limit
	  function generateTechniques(setName, limit) {
		let arr = [];
		for (let i = 1; i <= limit; i++) {
		  arr.push(`${setName} ${i}`);
		}
		return arr;
	  }

	  if (categoryRadio) {
		const cat = categoryRadio.getAttribute('data-category');
		// Map from category to sets (hardcoded as in original code, keep content same)
		const categorySets = {
		  white: ['Sohn Ppae Ki', 'Ki Bohn Soo', 'Sohn Mohk Soo', 'Eui Bohk Soo'],
		  yellow: ['Ahn Sohn Mohk Soo', 'Maek Chi Ki', 'Maek Cha Ki', 'Joo Muhk Maga Ki Bohn Soo'],
		  blue: ['Joong Geup Sohn Mohk Soo', 'Ahp Eui Bohk Soo', 'Dee Eui Bohk Soo', 'Kwahn Juhl Ki'],
		  red: ['Too Ki', 'Mohk Joh Leu Ki', 'Bahn Too Ki', 'Yahng Sohn Mohk Soo'],
		  brown: ['Ssahng Soo', 'Dahn Doh Mahk Ki', 'Ki Bohn Bohn', 'Gahk Doh Bub', 'Juhn Hwahn Bub'],
		  dbn: ['Goh Geup Sohn Mohk Soo', 'Goh Geup Eui Bohk Soo', 'Jah Ki', 'Wah Ki'],
		  jkn: ['Ee In Jeh Ahp Sool', 'Jahp Ki', 'Johk Bahng Uh Sool'],
		  ksn: ['Keun Dae Ryuhn', 'Jee Ahp Sool', 'Yuhn Heng Sool', 'Po Bahk Sool'],
		  psbn: ['Jee Peng Ee Sool', 'Pyhung Soo', 'Bu Chae Sool', 'Bahk Sool']
		};
		const sets = categorySets[cat] || [];
		sets.forEach(set => {
		  // Find checkbox for this set to get limit
		  const itemCheckbox = Array.from(document.querySelectorAll('.item')).find(i => i.value === set);
		  const limit = itemCheckbox ? parseInt(itemCheckbox.getAttribute('data-limit'), 10) : 10;
		  if (perItemMode) {
			const count = Math.min(perItemCount, limit);
			for (let i = 1; i <= count; i++) {
			  itemList.push(`${set} ${i}`);
			}
		  } else {
			for (let i = 1; i <= limit; i++) {
			  itemList.push(`${set} ${i}`);
			}
		  }
		});
	  } else if (checkedItems.length > 0) {
		checkedItems.forEach(item => {
		  const set = item.value;
		  const limit = parseInt(item.getAttribute('data-limit'), 10);
		  if (perItemMode) {
			const count = Math.min(perItemCount, limit);
			for (let i = 1; i <= count; i++) {
			  itemList.push(`${set} ${i}`);
			}
		  } else {
			for (let i = 1; i <= limit; i++) {
			  itemList.push(`${set} ${i}`);
			}
		  }
		});
	  } else {
		// If no category or items selected, return empty
		return [];
	  }

	  if (!perItemMode) {
		// If not perItemMode, pick random subset of the entire list
		const numberToGenerate = parseInt(document.getElementById('numberToGenerate').value, 10) || 1;
		// Shuffle and take first numberToGenerate items
		itemList = shuffleArray(itemList).slice(0, numberToGenerate);
	  } else {
		// If random order checked, shuffle entire list
		if (randomOrder) {
		  itemList = shuffleArray(itemList);
		}
	  }

	  return itemList;
	}

	function shuffleArray(array) {
	  for (let i = array.length - 1; i > 0; i--) {
		const j = Math.floor(Math.random() * (i + 1));
		[array[i], array[j]] = [array[j], array[i]];
	  }
	  return array;
	}

	function showCurrentItem() {
	  if (currentIndex < generatedItems.length) {
		document.getElementById('output').innerText = generatedItems[currentIndex];
		document.getElementById('feedback-buttons').style.display = 'block';
		document.getElementById('summary').innerHTML = '';
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

	document.addEventListener('DOMContentLoaded', () => {
	  document.getElementById('start-button').addEventListener('click', () => {
		// Reset
		generatedItems = generateItemList();
		currentIndex = 0;
		userFeedback = [];

		if (generatedItems.length === 0) {
		  alert('Please select a category or some specific sets to generate techniques.');
		  return;
		}

		showCurrentItem();
	  });

	  document.getElementById('btn-correct').addEventListener('click', () => rateItem('correct'));
	  document.getElementById('btn-incorrect').addEventListener('click', () => rateItem('incorrect'));

	  document.getElementById('perItemMode').addEventListener('change', togglePerItemInput);

	  togglePerItemInput();
	});
	</script>

	</body>
	</html>
</div>
{% endraw %}