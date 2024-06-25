import type { Route } from "@types";

export const routes: Route[] = [
  { url: "/", name: "Home", type: "logo" },
  { url: "/blog", name: "Blog" },
  { url: "/about", name: "About" },
  { url: "/hire", name: "Hire", type: "important" },
];
