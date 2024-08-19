# ipl-bush

Welcome to the ipl-bush resource for your FiveM server!

## Overview

The ipl-bush resource adds a fun and interactive item to your server - a bush that you can hide in and move around! Surprise your players with this quirky and immersive feature.

```markdown
## Installation

1. Open `qb-core/shared/items.lua`.

2. Add the following entry to the items list:

   ```
   ["bush"] = {
      ["name"] = "bush",
      ["label"] = "A Bush?",
      ["weight"] = 1000,
      ["type"] = "item",
      ["image"] = "addyourownimage.png",
      ["unique"] = true,
      ["useable"] = true,
      ["shouldClose"] = true,
      ["combinable"] = nil,
      ["description"] = "A Bush? KEKW"
   },
   ```

   Make sure to replace `"addyourownimage.png"` with the actual image URL or path.

3. Save the file.

4. Restart your FiveM server to apply the changes.

## Usage

To use the bush item, obtain it in-game and interact with it. Enjoy hiding and moving around like a true stealth master!

## Notes

- This is a useable item, so make sure to include it in your server's inventory or item distribution system.
- Customize the image, weight, and other properties according to your server's needs.

Feel free to reach out if you have any questions or need further assistance.

Happy hiding!
