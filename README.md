# Indexing for the Precision Medicine Era - Presentation

A reveal.js presentation exploring the mathematical contradictions in cardiac measurement normalization methods.

## 🎯 Quick Start

1. Open `index.html` in any modern web browser
2. Use arrow keys or spacebar to navigate
3. Press `S` for speaker notes view
4. Press `F` for fullscreen
5. Press `ESC` for slide overview

## 📦 What's Included

- **Complete presentation** following your detailed roadmap
- **All 24 slides** from Opening through Closing
- **Speaker notes** for each slide with talking points
- **Professional medical/clinical theme** with your color scheme
- **Placeholder sections** for images/graphs (marked clearly)
- **Ready for screen recording** via Zoom or similar

## 🎨 Customization

### Colors

The presentation uses your specified color scheme:
- **Male data**: `#1e40af` (blue)
- **Female data**: `#dc2626` (red)
- **Warnings**: `#f59e0b` (orange)
- **Success**: `#10b981` (green)

To change colors, edit the CSS variables at the top of the file:

```css
:root {
    --male-color: #1e40af;
    --female-color: #dc2626;
    --warning-color: #f59e0b;
    --success-color: #10b981;
}
```

### Adding Images/Graphs

Replace placeholder sections like:

```html
<div class="image-placeholder">
    [Graph description]
</div>
```

With actual images:

```html
<img src="images/your-graph.png" alt="Description" style="max-width: 100%;">
```

Or embed live charts (if you want to use your React components):

```html
<iframe src="path-to-chart.html" width="100%" height="500"></iframe>
```

### Slide Transitions

Current setting: `slide` transition

To change globally, edit the `Reveal.initialize()` section:

```javascript
transition: 'fade', // Options: none, fade, slide, convex, concave, zoom
```

## 📝 Speaker Notes

Every slide has detailed speaker notes based on your roadmap. To view them:

1. Press `S` during presentation
2. Opens speaker view in new window
3. Shows current slide, next slide, notes, and timer

**Pro tip**: Use two monitors - one for speaker view, one for presentation.

## 🎬 Recording Tips

### For Zoom Recording:

1. Open presentation in fullscreen (`F` key)
2. Start Zoom meeting/recording
3. Share screen → Select browser window
4. Navigate normally with arrow keys

### For Screen Recording Software:

1. Set recording area to 1280x720 (matches presentation aspect ratio)
2. Use fullscreen mode
3. Consider recording with speaker notes open on second monitor

### Demo Transition (Slide 9):

When you reach the demo slide:
1. Have your interactive lab open in another browser tab/window
2. Smoothly transition to demo
3. Follow the demo script from your roadmap (sections 2.1-2.7)
4. Return to presentation for slide 10

**Tip**: Practice the demo transition several times. It's the trickiest part!

## 🖼️ Image Placeholders to Fill

The following slides need images/graphs (marked with `[...]` placeholders):

1. **Slide 6** - Graph showing line through origin (BSA vs Measurement)
2. **Slide 7** - Scatter plot showing curved relationship with forced linear fit
3. **Slide 8** - Bell curve showing population distribution
4. **Slide 10** - Side-by-side graphs of tricuspid perimeter vs area
5. **Slide 11** - Visual of stroke volume formula
6. **Slide 19** - Comparison graph (BSA vs allometric scaling)
7. **Slide 23** - QR code to your interactive lab

### Creating Graphs

You can:
- Export from your interactive lab
- Create in Excel/Google Sheets and screenshot
- Use Plotly/D3.js for interactive versions
- Use design tools like Figma or Illustrator

### QR Code Generation

For slide 23, generate a QR code pointing to:
`https://parameterz.github.io/cardiac-scaling`

Free tools:
- qr-code-generator.com
- goqr.me
- Or use a library like qrcode.js

## 🚀 Deployment to GitHub Pages

### Option 1: Same Repository (Recommended)

Add to your existing `cardiac-scaling` repository:

```bash
# In your cardiac-scaling repo
mkdir presentation
cp index.html presentation/
git add presentation/
git commit -m "Add reveal.js presentation"
git push
```

Access at: `https://parameterz.github.io/cardiac-scaling/presentation/`

### Option 2: Separate Repository

Create new repository:

```bash
# Create repo: echocardiography-presentation
git clone https://github.com/parameterz/echocardiography-presentation.git
cd echocardiography-presentation
cp /path/to/index.html .
git add index.html
git commit -m "Initial presentation commit"
git push
```

Enable GitHub Pages:
1. Go to repo Settings → Pages
2. Source: Deploy from branch
3. Branch: main / root
4. Save

Access at: `https://parameterz.github.io/echocardiography-presentation/`

### Adding Images to Repository

```
presentation/
├── index.html
├── images/
│   ├── graph-line-through-origin.png
│   ├── scatter-plot-curved.png
│   ├── tricuspid-comparison.png
│   └── qr-code-lab.png
└── README.md
```

Reference images in HTML:
```html
<img src="images/graph-line-through-origin.png" alt="Line through origin">
```

## ⌨️ Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `→` / `Space` | Next slide |
| `←` | Previous slide |
| `↑` / `↓` | Navigate vertical slides (if any) |
| `ESC` | Slide overview/grid |
| `F` | Fullscreen |
| `S` | Speaker notes |
| `B` / `.` | Pause (blackout) |
| `Home` | First slide |
| `End` | Last slide |
| `D` | Jump to demo (custom shortcut) |

## 🎨 Customizing Themes

The presentation uses a custom medical/clinical theme. To use a built-in reveal.js theme instead:

Change this line:
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/dist/theme/white.css">
```

To one of these:
- `black.css` - Black background theme
- `white.css` - White background (current)
- `league.css` - Dark blue
- `beige.css` - Beige
- `sky.css` - Light blue
- `night.css` - Black with thick headers
- `serif.css` - Serif fonts
- `simple.css` - Minimal
- `solarized.css` - Solarized colors

## 📊 Adding Custom Content

### Tables

```html
<table>
    <thead>
        <tr>
            <th>Method</th>
            <th>Equation</th>
            <th>Use Case</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>BSA Indexing</td>
            <td>Measurement / BSA</td>
            <td>Traditional</td>
        </tr>
    </tbody>
</table>
```

### Two-Column Layout

```html
<div class="two-columns">
    <div>
        Left column content
    </div>
    <div>
        Right column content
    </div>
</div>
```

### Info Boxes

```html
<div class="info-box">
    <h4>Title</h4>
    <p>Content</p>
</div>

<div class="warning-box">
    Yellow warning box
</div>

<div class="danger-box">
    Red danger/alert box
</div>

<div class="success-box">
    Green success box
</div>
```

### Formulas

```html
<div class="formula">
    Indexed Value = Measurement / BSA
</div>
```

## 🔧 Technical Details

- **Framework**: reveal.js 5.0.4 (loaded via CDN)
- **No build process required**: Just HTML/CSS/JavaScript
- **No dependencies to install**: Everything loaded from CDNs
- **Works offline**: Download reveal.js locally if needed
- **Browser support**: All modern browsers (Chrome, Firefox, Safari, Edge)

## 📱 Mobile/Tablet Support

The presentation works on mobile/tablet, but it's optimized for:
- Desktop/laptop screen recording
- Projector presentation
- Large screen viewing

For mobile viewing, consider using reveal.js's mobile touch gestures:
- Swipe left/right for navigation
- Pinch to zoom

## ⏱️ Presentation Timing

Based on your roadmap:
- **Opening**: 3-4 minutes (Slides 1-4)
- **Act I**: 5-7 minutes (Slides 5-8)
- **Act II (Demo)**: 12-15 minutes (Slide 9 + demo)
- **Act III**: 5-7 minutes (Slides 10-12)
- **Act IV**: 5-7 minutes (Slides 13-16)
- **Act V**: 5-7 minutes (Slides 17-19)
- **Closing**: 3-4 minutes (Slides 20-24)

**Total**: 30-40 minutes

## 🎤 Recording Checklist

Before recording:

- [ ] All placeholder images replaced with actual content
- [ ] Contact information updated (Slide 23, 24)
- [ ] QR code generated and added
- [ ] Demo lab tested in separate browser tab
- [ ] Speaker notes reviewed
- [ ] Practice run completed
- [ ] Recording software tested
- [ ] Audio levels checked
- [ ] Screen sharing settings configured
- [ ] Notifications disabled
- [ ] Clean desktop/browser (no embarrassing tabs!)

## 🐛 Troubleshooting

### Slides not advancing
- Check that you're in the main presentation window (not speaker notes)
- Try clicking on the slide first to focus the window
- Use arrow keys instead of spacebar if space isn't working

### Speaker notes not opening
- Check browser popup blocker
- Press `S` key while in the main presentation
- Try opening manually: add `?showNotes=true` to URL

### Images not loading
- Check file paths (relative to index.html)
- Ensure images are in the correct directory
- Check browser console for errors (F12)

### Presentation looks wrong
- Clear browser cache
- Check that CDN links are loading (internet connection)
- Try a different browser

## 📚 Further Customization

For advanced customization, see reveal.js documentation:
- https://revealjs.com/
- https://github.com/hakimel/reveal.js

## 📞 Support

Questions about the presentation? The roadmap document has extensive notes on content, timing, and talking points.

## 🎓 Presentation Tips

1. **Practice the demo transition** - It's the hardest part
2. **Use speaker notes** - They have all your talking points
3. **Don't rush** - Pauses are powerful
4. **Engage with contradictions** - Let audience think before revealing
5. **Be enthusiastic** - This IS exciting stuff!
6. **Test recording quality** - Do a short test first
7. **Have backup plan** - Screen recording of demo if live demo fails

## 📝 License

Feel free to adapt, modify, and reuse for your presentation needs.

---

**Ready to present? Open `index.html` and start practicing!** 🎉
