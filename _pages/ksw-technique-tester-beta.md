---
permalink: /ksw-technique-tester-beta/
title: "Kuk Sool Technique Tester BETA"
excerpt: "A random generator for Kuk Sool Won self-defense techniques."
header:
  overlay_image: home.JPG
  overlay_filter: rgba(51, 51, 90, 0.75)
author_profile: false
og_image: og_image.png
sitemap: false
---
Select your rank to be tested on all technique sets up to your next grade, or manually select which sets you wish to be tested from.

{% raw %}
<style>
  .correct {
    display: block;
    font-weight: bold;
    padding-left: 10px;
  }
  .incorrect {
    display: block;
    font-weight: bold;
    padding-left: 10px;
  }
  .inline-label {
    display: flex;
    align-items: center;
    margin-bottom: 5px;
  }
  #output {
    margin: 30px 0;
    font-size: 2.2em;
    font-weight: bold;
    text-align: center;
    min-height: 40px;
  }
  #feedback-buttons {
    display: none;
    justify-content: center;
    align-items: center;
    gap: 20px;
    margin: 30px auto;
  }
  #feedback-buttons button {
    font-size: 3em;
    padding: 20px 30px;
    cursor: pointer;
  }
  #summary {
    margin-top: 30px;
    font-size: 1.2em;
  }
  #start-button {
    display: block;
    font-size: 1.4em;
    padding: 15px 30px;
    cursor: pointer;
    margin: 20px auto;
  }
  .form-section {
    margin-bottom: 20px;
  }
  .checkbox-grid {
    column-count: 2;
    column-gap: 40px;
    max-width: 100%;
  }
  .checkbox-grid label {
    display: flex;
    align-items: center;
    break-inside: avoid;
    margin-bottom: 6px;
  }
  @media screen and (max-width: 600px) {
    .checkbox-grid {
      column-count: 1;
    }
  }
</style>

<div class="form-section">
  <label for="categorySelect"><strong>Select Sets by Rank</strong></label><br>
  <select id="categorySelect">
    <option value="">-- Select a Rank --</option>
    <option value="white">White Belt</option>
    <option value="yellow">Yellow Belt</option>
    <option value="blue">Blue Belt</option>
    <option value="red">Red Belt</option>
    <option value="brown">Brown Belt</option>
    <option value="dbn">Dahn Bo Nim</option>
    <option value="jkn">Jo Kyo Nim</option>
    <option value="ksn">Kyo Sa Nim</option>
    <option value="psbn">Pu Sa Bum Nim</option>
    <option value="sbn">Sa Bum Nim</option>
  </select>
</div>

<div class="form-section">
  <strong>Or Select Specific Sets</strong><br><br>
  <div class="checkbox-grid" id="checkboxes-container"></div>
</div>

<div class="form-section">
  <label class="inline-label"><input type="checkbox" id="allMode" onchange="toggleModes()"> Run through all techniques from selected sets</label><br>
  <div id="allModeOptions" style="display: none;">
    <label class="inline-label"><input type="checkbox" id="shuffleEachSet"> Randomise order of techniques in each set</label><br>
  </div>

  <div id="regularModeOptions">
    <label class="inline-label"><input type="checkbox" id="perItemMode" onchange="togglePerItemInput()"> Generate specific number of techniques per set</label><br>
    <div id="singleCountInput">
      <label>How many techniques in total? <input type="number" id="numberToGenerate" min="1" value="10"></label>
    </div>
    <div id="perItemInputs" style="display:none;">
      <label>How many techniques per selected set? <input type="number" id="perItemCount" min="1" value="2"></label>
      <label class="inline-label"><input type="checkbox" id="randomOrder"> Randomise order of sets</label>
    </div>
  </div>

  <br>
  <button id="start-button" onclick="startGeneration()">Start</button>
</div>

<div id="output"></div>

<div id="feedback-buttons">
  <button onclick="rateItem('correct')">👍</button>
  <button onclick="rateItem('incorrect')">👎</button>
</div>

<div id="summary"></div>

<script>
const categoryMap = {
  white: ['Ki Bohn Soo'],
  yellow: ['white', 'Sohn Mohk Soo'],
  blue: ['yellow', 'Eui Bohk Soo'],
  red: ['blue', 'Ahn Sohn Mohk Soo', 'Maek Chi Ki'],
  brown: ['red', 'Maek Cha Ki', 'Joo Muhk Maga Ki Bohn Soo'],
  dbn: ['brown', 'Joong Geup Sohn Mohk Soo', 'Ahp Eui Bohk Soo', 'Dee Eui Bohk Soo', 'Kwahn Juhl Ki', 'Too Ki', 'Mohk Joh Leu Ki', 'Bahn Too Ki', 'Yahng Sohn Mohk Soo', 'Ssahng Soo', 'Dahn Doh Mahk Ki'],
  jkn: ['dbn', 'Ki Bohn Bohn', 'Gahk Doh Bub', 'Juhn Hwahn Bub', 'Goh Geup Sohn Mohk Soo', 'Goh Geup Eui Bohk Soo', 'Jah Ki', 'Wah Ki', 'Ee In Jeh Ahp Sool', 'Jahp Ki', 'Johk Bahng Uh Sool', 'Keun Dae Ryuhn'],
  ksn: ['jkn', 'Jee Ahp Sool', 'Yuhn Heng Sool', 'Po Bahk Sool','Jee Peng Ee Sool'],
  psbn: ['ksn', 'Pyhung Soo', 'Bu Chae Sool', 'Bahk Sool'],
  sbn: ['psbn','Ssahng Jee Ahp Sool', 'Chahl Sah Jahng', 'Bahng Wong Ki']
};

const allSets = {
  "Ki Bohn Soo": 15, "Sohn Mohk Soo": 11, "Eui Bohk Soo": 13, "Ahn Sohn Mohk Soo": 6, "Maek Chi Ki": 15,
  "Maek Cha Ki": 15, "Joo Muhk Maga Ki Bohn Soo": 15, "Joong Geup Sohn Mohk Soo": 7, "Ahp Eui Bohk Soo": 20,
  "Dee Eui Bohk Soo": 23, "Kwahn Juhl Ki": 13, "Too Ki": 13, "Mohk Joh Leu Ki": 5, "Bahn Too Ki": 10,
  "Yahng Sohn Mohk Soo": 15, "Ssahng Soo": 15, "Dahn Doh Mahk Ki": 15, "Ki Bohn Bohn": 10, "Gahk Doh Bub": 10,
  "Juhn Hwahn Bub": 10, "Goh Geup Sohn Mohk Soo": 15, "Goh Geup Eui Bohk Soo": 15, "Jah Ki": 15, "Wah Ki": 15,
  "Ee In Jeh Ahp Sool": 10, "Jahp Ki": 20, "Johk Bahng Uh Sool": 15, "Keun Dae Ryuhn": 10, "Jee Ahp Sool": 10,
  "Yuhn Heng Sool": 10, "Po Bahk Sool": 10, "Jee Peng Ee Sool": 10, "Pyhung Soo": 10, "Bu Chae Sool": 10,
  "Bahk Sool": 10, "Ssahng Jee Ahp Sool": 10, "Chahl Sah Jahng": 10, "Bahng Wong Ki": 5
};

let currentList = [];
let currentIndex = 0;
let correctCount = 0;

function expandCategory(cat, visited = new Set()) {
  if (visited.has(cat)) return [];
  visited.add(cat);
  if (!categoryMap[cat]) return [cat];
  return categoryMap[cat].flatMap(sub => expandCategory(sub, visited));
}

function shuffle(arr) {
  for (let i = arr.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [arr[i], arr[j]] = [arr[j], arr[i]];
  }
  return arr;
}

function togglePerItemInput() {
  const isPer = document.getElementById('perItemMode').checked;
  document.getElementById('perItemInputs').style.display = isPer ? 'block' : 'none';
  document.getElementById('singleCountInput').style.display = isPer ? 'none' : 'block';
}

function toggleModes() {
  const all = document.getElementById('allMode').checked;
  document.getElementById('regularModeOptions').style.display = all ? 'none' : 'block';
  document.getElementById('allModeOptions').style.display = all ? 'block' : 'none';
}

function gatherSelectedItems() {
  const cat = document.getElementById('categorySelect').value;
  if (cat) return expandCategory(cat);
  return Array.from(document.querySelectorAll('.item:checked')).map(cb => cb.value);
}

function buildTechniqueList(sets, count, perMode) {
  const allMode = document.getElementById('allMode').checked;
  const shuffleEachSet = document.getElementById('shuffleEachSet').checked;
  const list = [];

  if (allMode) {
    sets.forEach(setName => {
      const limit = allSets[setName];
      let nums = Array.from({ length: limit }, (_, i) => i + 1);
      if (shuffleEachSet) nums = shuffle(nums);
      nums.forEach(n => list.push(`${setName} ${n}`));
    });
    return list;
  }

  if (perMode) {
    sets.forEach(set => {
      const limit = allSets[set];
      const all = Array.from({ length: limit }, (_, i) => `${set} ${i + 1}`);
      for (let i = 0; i < count; i++) {
        list.push(all[i % all.length]);
      }
    });
  } else {
    const all = sets.flatMap(set => {
      const limit = allSets[set];
      return Array.from({ length: limit }, (_, i) => `${set} ${i + 1}`);
    });
    for (let i = 0; i < count; i++) {
      list.push(all[i % all.length]);
    }
  }

  return list;
}

function displayNext() {
  const output = document.getElementById('output');
  if (currentIndex < currentList.length) {
    output.textContent = currentList[currentIndex];
    document.getElementById('feedback-buttons').style.display = 'flex';
  } else {
    output.textContent = 'Summary';
    document.getElementById('feedback-buttons').style.display = 'none';
    document.getElementById('start-button').style.display = 'block';

    const percent = Math.round((correctCount / currentList.length) * 100);
    const result = document.createElement('div');
    result.style.marginTop = '20px';
    result.innerHTML = `<strong>Score:</strong> ${correctCount} / ${currentList.length} (${percent}%)`;
    document.getElementById('summary').appendChild(result);
  }
}

function startGeneration() {
  currentIndex = 0;
  correctCount = 0;
  document.getElementById('summary').innerHTML = '';
  document.getElementById('start-button').style.display = 'none';

  const sets = gatherSelectedItems();
  if (!sets.length) {
    alert("Select at least one set.");
    document.getElementById('start-button').style.display = 'block';
    return;
  }

  const per = document.getElementById('perItemMode').checked;
  const count = parseInt(document.getElementById(per ? 'perItemCount' : 'numberToGenerate').value || '1');
  if (isNaN(count) || count < 1) {
    alert("Enter a valid number.");
    document.getElementById('start-button').style.display = 'block';
    return;
  }

  currentList = buildTechniqueList(sets, count, per);
  displayNext();
}

function rateItem(feedback) {
  const summary = document.getElementById('summary');
  const span = document.createElement('span');
  span.textContent = (feedback === 'correct' ? '✅ ' : '❌ ') + currentList[currentIndex];
  span.className = feedback;
  summary.appendChild(span);
  summary.appendChild(document.createElement('br'));

  if (feedback === 'correct') correctCount++;
  currentIndex++;
  displayNext();
}

document.addEventListener('DOMContentLoaded', () => {
  const checkboxesContainer = document.getElementById('checkboxes-container');
  Object.entries(allSets).forEach(([name, limit]) => {
    const label = document.createElement('label');
    label.className = 'inline-label';
    label.innerHTML = `<input type="checkbox" class="item" value="${name}"> ${name} (${limit})`;
    checkboxesContainer.appendChild(label);
  });

  const select = document.getElementById('categorySelect');
  select.addEventListener('change', () => {
    const selected = select.value;
    const sets = selected ? expandCategory(selected) : [];
    document.querySelectorAll('.item').forEach(cb => {
      cb.checked = sets.includes(cb.value);
    });
  });

  document.querySelectorAll('.item').forEach(cb => {
    cb.addEventListener('change', () => {
      const checked = Array.from(document.querySelectorAll('.item:checked')).map(cb => cb.value).sort().join('|');
      let matched = false;
      for (const key in categoryMap) {
        const group = expandCategory(key).sort().join('|');
        if (group === checked) {
          select.value = key;
          matched = true;
          break;
        }
      }
      if (!matched) select.value = '';
    });
  });

  document.getElementById('perItemMode').addEventListener('change', togglePerItemInput);
  togglePerItemInput();
});
</script>
{% endraw %}

**Notice:** Whilst this resource is free to use, it costs me time and money to create and maintain. If you use this resource, a small donation to support its upkeep would be greatly appreciated. [Click here to donate via PayPal](https://paypal.me/sh4y).
{: .notice}