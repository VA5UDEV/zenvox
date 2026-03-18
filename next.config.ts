import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  devIndicators: false,
  experimental: {
    proxyClientMaxBodySize: 20971520, // 20MB in bytes
  },
};

export default nextConfig;
