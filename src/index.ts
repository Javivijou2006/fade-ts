// ----------------LOCAL VARIABLES-----------
const TextBase = ["TextTransparency", "BackgroundTransparency"];
const ImageBase = ["ImageTransparency", "BackgroundTransparency"];
const FrameBase = ["BackgroundTransparency"];

const TypesArray = [
  "TextLabel",
  "TextButton",
  "TextBox",
  "ViewportFrame",
  "ImageButton",
  "ImageLabel",
  "Frame",
];

const PropsArray = [
  TextBase,
  TextBase,
  TextBase,
  ImageBase,
  ImageBase,
  ImageBase,
  FrameBase,
];

const TweenService = game.GetService("TweenService");

// ----------------LOCAL FUNCTIONS-----------

// ----------------EXPORTS--------------

export function FadeOut(Instance: UIComponent, t: number) {
  //Variables init (custom method to avoid GC to jump in **STILL TO BE TESTED**)
  let IndexOfElement: number;
  let InstanceType: string;
  let PropsOfElement: string[];
  let TI = new TweenInfo(
    t,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.InOut
  );

  Instance.GetDescendants().forEach((Element) => {
    InstanceType = Element.ClassName as string;
    let TrueElement;
    IndexOfElement = TypesArray.indexOf(InstanceType) + 1;
    switch (IndexOfElement) {
      case 1:
      case 2:
      case 3:
        TrueElement = Element as TextLabel;
        TrueElement.SetAttribute(
          "TextTransparencyDefault",
          TrueElement.TextTransparency
        );
        TrueElement.SetAttribute(
          "BackgroundTransparencyDefault",
          TrueElement.BackgroundTransparency
        );
        TweenService.Create(TrueElement, TI, { TextTransparency: 1 }).Play();
        TweenService.Create(TrueElement, TI, {
          BackgroundTransparency: 1,
        }).Play();
        break;

      case 4:
      case 5:
      case 6:
        TrueElement = Element as ImageLabel;
        TrueElement.SetAttribute(
          "ImageTransparencyDefault",
          TrueElement.ImageTransparency
        );
        TrueElement.SetAttribute(
          "BackgroundTransparencyDefault",
          TrueElement.BackgroundTransparency
        );

        TweenService.Create(TrueElement, TI, { ImageTransparency: 1 }).Play();
        TweenService.Create(TrueElement, TI, {
          BackgroundTransparency: 1,
        }).Play();
        break;

      case 7:
        TrueElement = Element as Frame;
        TrueElement.SetAttribute(
          "BackgroundTransparencyDefault",
          TrueElement.BackgroundTransparency
        );
        TweenService.Create(TrueElement, TI, {
          BackgroundTransparency: 1,
        }).Play();
        break;

      default:
        break;
    }
  });
}

export function FadeIn(Instance: UIComponent, t: number) {
  //Variables init (custom method to avoid GC to jump in **STILL TO BE TESTED**)
  let IndexOfElement: number;
  let InstanceType: string;
  let PropsOfElement: string[];
  let TI = new TweenInfo(
    t,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.InOut
  );

  Instance.GetDescendants().forEach((Element) => {
    InstanceType = Element.ClassName as string;
    let TrueElement;
    IndexOfElement = TypesArray.indexOf(InstanceType) + 1;
    switch (IndexOfElement) {
      case 1:
      case 2:
      case 3:
        TrueElement = Element as TextLabel;

        TweenService.Create(TrueElement, TI, {
          TextTransparency: Element.GetAttribute(
            "TextTransparencyDefault"
          ) as number,
        }).Play();
        TweenService.Create(TrueElement, TI, {
          BackgroundTransparency: Element.GetAttribute(
            "BackgroundTransparencyDefault"
          ) as number,
        }).Play();
        break;

      case 4:
      case 5:
      case 6:
        TrueElement = Element as ImageLabel;

        TweenService.Create(TrueElement, TI, {
          ImageTransparency: Element.GetAttribute(
            "ImageTransparencyDefault"
          ) as number,
        }).Play();
        TweenService.Create(TrueElement, TI, {
          BackgroundTransparency: Element.GetAttribute(
            "BackgroundTransparencyDefault"
          ) as number,
        }).Play();
        break;

      case 7:
        TrueElement = Element as Frame;
        TweenService.Create(TrueElement, TI, {
          BackgroundTransparency: Element.GetAttribute(
            "BackgroundTransparencyDefault"
          ) as number,
        }).Play();
        break;

      default:
        break;
    }
  });
}
