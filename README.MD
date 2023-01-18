
# Fade-ts

This package allows any developer to switch between multiple pages easily just calling one method.

The syntax of the module is made to be clear and easy to understand

```typescript
    import { FadeIn, FadeOut } from "@rbxts/fade-ts";

    ...
    
    FadeIn(UIInstance, 0.7);
    FadeOut(UIInstance, 0.7);
```
## Functionality

UIInstance should be a reference to any UIComponent in your game.

 FadeOut will make invisible all the descendants of UIInstance, but it won't fade out the UIInstance itself. 

FadeIn will do exacly the reverse, transforming the descendants into their previus state. This means that if the ImageTransparency of any ImageLabel is 0.5 is faded out by FadeOut, it will be saved as a attribute, and when running FadeIn, it will go back to 0.5 not 0 like the rest of properties and elements. This applies to all the descendants of the instance as first argument