import 'package:flutter/material.dart';

enum LayerIds {
  allParkingSpaces,
  disabledParking,
  // charging,
  carSharing,
}

extension LayerIdsToString on LayerIds {
  String enumToString() {
    final Map<LayerIds, String> enumStrings = {
      LayerIds.allParkingSpaces: "All Parking Spaces",
      LayerIds.disabledParking: "Disabled Parking",
      LayerIds.carSharing: "Car Sharing",
    };

    return enumStrings[this];
  }

  Color enumToColor() {
    final Map<LayerIds, Color> enumStrings = {
      LayerIds.allParkingSpaces: Colors.blue,
      LayerIds.disabledParking: Colors.blueAccent,
      LayerIds.carSharing: Colors.orange,
    };

    return enumStrings[this];
  }

  String enumToStringEN() {
    final Map<LayerIds, String> enumStrings = {
      LayerIds.allParkingSpaces: "All Parking Spaces",
      LayerIds.disabledParking: "Disabled Parking",
      LayerIds.carSharing: "Fahrgemeinschaft",
    };

    return enumStrings[this];
  }

  String enumToStringDE() {
    final Map<LayerIds, String> enumStrings = {
      LayerIds.allParkingSpaces: "Alle Parkplätze",
      LayerIds.disabledParking: "Stellplätze für Behinderte",
      LayerIds.carSharing: "Car Sharing",
    };

    return enumStrings[this];
  }
}

Map<LayerIds, String> layerFileNames = {
  LayerIds.allParkingSpaces: "All_parking_spaces.geojson",
  LayerIds.disabledParking: "Parking_spaces_for_the_disabled.geojson",
  LayerIds.carSharing: "Parking_spaces_e-vehicles_and_car_sharing.geojson",
};
Map<LayerIds, String> layerIcons = {
  LayerIds.allParkingSpaces: """
  <svg id="Layer_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512" xmlns="http://www.w3.org/2000/svg">
    <g>
        <path d="m435.767 512h-359.534c-42.102 0-76.233-34.131-76.233-76.233v-359.534c0-42.102 34.131-76.233 76.233-76.233h359.533c42.103 0 76.234 34.131 76.234 76.233v359.533c0 42.103-34.131 76.234-76.233 76.234z" fill="#3c87d0" />
        <path d="m76.233 481.095c-24.994 0-45.328-20.334-45.328-45.328v-359.534c0-24.994 20.334-45.328 45.328-45.328h359.533c24.994 0 45.328 20.334 45.328 45.328v359.533c0 24.994-20.334 45.328-45.328 45.328h-359.533z" fill="#5f99d7" />
        <g fill="#0268b4">
            <path d="m69.174 58.568c-2.929-2.929-7.678-2.929-10.606 0-2.929 2.929-2.929 7.678 0 10.606l4.003 4.003c1.464 1.464 3.384 2.197 5.303 2.197s3.839-.732 5.303-2.197c2.929-2.929 2.929-7.678 0-10.606z" />
            <path d="m449.43 438.823c-2.93-2.929-7.678-2.929-10.607 0s-2.929 7.678 0 10.606l4.003 4.003c1.465 1.464 3.385 2.197 5.304 2.197s3.839-.732 5.304-2.197c2.929-2.929 2.929-7.678 0-10.606z" />
            <path d="m444.126 75.374c1.919 0 3.839-.732 5.304-2.197l4.003-4.003c2.929-2.929 2.929-7.678 0-10.606-2.93-2.929-7.678-2.929-10.607 0l-4.003 4.003c-2.929 2.929-2.929 7.678 0 10.606 1.464 1.465 3.384 2.197 5.303 2.197z" />
            <path d="m62.571 438.823-4.003 4.003c-2.929 2.929-2.929 7.678 0 10.606 1.464 1.464 3.384 2.197 5.303 2.197s3.839-.732 5.303-2.197l4.003-4.003c2.929-2.929 2.929-7.678 0-10.606-2.928-2.929-7.677-2.929-10.606 0z" />
        </g>
        <path d="m435.767 23.405h-359.534c-29.129 0-52.828 23.699-52.828 52.828v359.533c0 29.129 23.699 52.828 52.828 52.828h359.533c29.13 0 52.828-23.699 52.828-52.828v-359.533c.001-29.129-23.698-52.828-52.827-52.828zm37.828 412.362c0 20.858-16.97 37.828-37.828 37.828h-359.534c-20.858 0-37.828-16.97-37.828-37.828v-359.534c0-20.858 16.97-37.828 37.828-37.828h359.533c20.858 0 37.828 16.97 37.828 37.828v359.534z" fill="#eef5f6" />
        <path d="m263.225 112.305c-16.845-16.401-38.979-25.433-62.327-25.433h-66c-5.476 0-10.726 2.18-14.592 6.058-3.504 3.515-5.59 8.166-5.941 13.083-.043.435-.071.91-.071 1.463v237.03c0 11.379 9.224 20.604 20.604 20.604 11.379 0 20.604-9.224 20.604-20.604v-82.468c15.138-.082 35.027-.179 45.396-.179 23.348 0 45.482-9.032 62.327-25.433 17.073-16.624 26.477-38.664 26.477-62.06 0-23.397-9.403-45.437-26.477-62.061zm-62.327 108.347c-10.319 0-29.935.095-45.053.177-.082-15.543-.179-35.93-.179-46.463 0-8.863-.056-30.089-.103-46.287h45.334c25.8 0 47.597 21.197 47.597 46.287.001 25.089-21.796 46.286-47.596 46.286z" fill="#eef5f6" />
        <path d="m385.216 357.204-9.797-51.138c-.677-3.534-3.769-6.089-7.366-6.089h-87.545c-3.598 0-6.689 2.555-7.366 6.089l-9.797 51.138c-.779 4.068 1.887 7.998 5.955 8.777 4.059.778 7.997-1.887 8.777-5.955l8.63-45.049h75.146l8.63 45.049c.688 3.592 3.831 6.09 7.357 6.09.469 0 .943-.044 1.42-.135 4.069-.779 6.735-4.709 5.956-8.777z" fill="#deecf1" />
        <g fill="#deecf1">
            <path d="m282.746 429.039h-14.751c-5.03 0-9.108-4.078-9.108-9.108v-22.957h32.966v22.957c.001 5.03-4.077 9.108-9.107 9.108z" />
            <path d="m380.565 429.039h-12.69c-5.03 0-9.108-4.078-9.108-9.108v-22.957h30.905v22.957c.001 5.03-4.077 9.108-9.107 9.108z" />
        </g>
        <path d="m394.21 402.254h-139.859c-5.189 0-9.395-4.206-9.395-9.395v-30.659c0-5.189 4.206-9.395 9.395-9.395h139.859c5.189 0 9.395 4.206 9.395 9.395v30.659c-.001 5.189-4.207 9.395-9.395 9.395z" fill="#eef5f6" />
        <path d="m394.21 352.806h-30.905c5.189 0 9.395 4.206 9.395 9.395v30.659c0 5.189-4.206 9.395-9.395 9.395h30.905c5.189 0 9.395-4.206 9.395-9.395v-30.66c-.001-5.188-4.207-9.394-9.395-9.394z" fill="#deecf1" />
        <g fill="#5f99d7">
            <path d="m282.809 370.03h-13.71c-4.143 0-7.5 3.358-7.5 7.5s3.357 7.5 7.5 7.5h13.71c4.143 0 7.5-3.358 7.5-7.5s-3.358-7.5-7.5-7.5z" />
            <path d="m379.463 370.03h-13.71c-4.143 0-7.5 3.358-7.5 7.5s3.357 7.5 7.5 7.5h13.71c4.143 0 7.5-3.358 7.5-7.5s-3.358-7.5-7.5-7.5z" />
        </g>
    </g>
</svg>
  """,
  LayerIds.disabledParking: """
  <svg id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512" xmlns="http://www.w3.org/2000/svg">
    <g>
        <path d="m458.759 512h-405.52c-19.804 0-35.858-16.054-35.858-35.858v-440.284c0-19.804 16.054-35.858 35.858-35.858h405.519c19.804 0 35.858 16.054 35.858 35.858v440.283c.001 19.805-16.053 35.859-35.857 35.859z" fill="#d8ecfe" />
        <path d="m494.619 35.859v440.282c0 19.808-16.058 35.856-35.856 35.856h-20.601c19.797 0 35.856-16.048 35.856-35.856v-440.282c0-19.808-16.058-35.856-35.856-35.856h20.601c19.798 0 35.856 16.048 35.856 35.856z" fill="#c4e2ff" />
        <path d="m442.035 473.787h-372.072c-8.181 0-14.813-6.632-14.813-14.813v-405.948c0-8.181 6.632-14.813 14.813-14.813h372.073c8.181 0 14.813 6.632 14.813 14.813v405.948c0 8.181-6.632 14.813-14.814 14.813z" fill="#8ac9fe" />
        <path d="m456.847 53.03v405.94c0 8.189-6.633 14.812-14.812 14.812h-20.601c8.179 0 14.812-6.623 14.812-14.812v-405.94c0-8.189-6.633-14.812-14.812-14.812h20.601c8.179 0 14.812 6.623 14.812 14.812z" fill="#60b7ff" />
        <g>
            <circle cx="270.627" cy="118.25" fill="#eef5f6" r="34.09" />
            <path d="m304.72 118.251c0 18.829-15.265 34.084-34.095 34.084-10.486 0-19.859-4.728-26.112-12.175 2.74.711 5.614 1.092 8.58 1.092 18.829 0 34.095-15.265 34.095-34.094 0-8.343-2.997-15.986-7.983-21.909 14.679 3.8 25.515 17.139 25.515 33.002z" fill="#deecf1" />
            <path d="m403.646 338.597-51.726-51.45c-3.972-3.951-9.346-6.169-14.949-6.169h-45.146v-30.003h31.643c11.707 0 21.198-9.49 21.198-21.198 0-11.707-9.49-21.198-21.198-21.198h-31.643v-14.63c0-11.707-9.49-21.198-21.198-21.198s-21.198 9.49-21.198 21.198v108.226c0 11.707 9.49 21.198 21.198 21.198h57.597l45.524 45.281c4.136 4.114 9.542 6.169 14.949 6.169 5.443 0 10.887-2.085 15.029-6.249 8.257-8.3 8.22-21.721-.08-29.977z" fill="#eef5f6" />
            <path d="m319.718 229.777c0-11.701-9.487-21.198-21.198-21.198h24.948c11.712 0 21.198 9.497 21.198 21.198 0 11.712-9.487 21.198-21.198 21.198h-24.948c11.711 0 21.198-9.487 21.198-21.198z" fill="#deecf1" />
            <path d="m403.728 368.575c-4.141 4.161-9.59 6.252-15.028 6.252-4.388 0-8.776-1.36-12.484-4.058.896-.649 1.761-1.38 2.565-2.194 8.261-8.302 8.22-21.724-.082-29.974l-51.719-51.451c-3.976-3.955-9.353-6.17-14.956-6.17h24.948c5.603 0 10.98 2.215 14.946 6.17l51.729 51.451c8.301 8.25 8.331 21.672.081 29.974z" fill="#deecf1" />
            <path d="m293.053 368.446c-17.612 12.314-38.289 18.133-59.797 16.828-51.998-3.154-91.736-48.024-88.582-100.022 2.099-34.601 22.933-65.226 54.372-79.926 10.605-4.958 15.182-17.575 10.224-28.181-4.958-10.605-17.573-15.181-28.181-10.224-45.523 21.285-75.692 65.643-78.732 115.763-4.57 75.332 53 140.337 128.332 144.907 30.712 1.863 61.487-6.802 86.657-24.401 9.594-6.709 11.935-19.925 5.226-29.519-6.709-9.595-19.927-11.933-29.519-5.225z" fill="#eef5f6" />
            <path d="m326.186 382.882c-8.189-4.553-18.592-4.357-26.791 1.37-21.003 14.688-45.651 21.621-71.3 20.065-62.009-3.76-109.401-57.26-105.631-119.269 2.503-41.263 27.348-77.779 64.831-95.31 8.652-4.048 13.937-12.361 14.534-21.25 3.121 2.081 5.737 5.006 7.437 8.652 4.965 10.609.381 23.228-10.218 28.182-31.437 14.699-52.275 45.332-54.376 79.931-3.152 51.997 36.587 96.865 88.584 100.017 21.507 1.308 42.191-4.512 59.794-16.831 9.6-6.706 22.815-4.367 29.521 5.233 1.988 2.845 3.172 5.997 3.615 9.21z" fill="#deecf1" />
        </g>
    </g>
</svg>

   """,
  LayerIds.carSharing: """
  
  <svg id="car-share" enable-background="new 0 0 300 300" height="512" viewBox="0 0 300 300" width="512" xmlns="http://www.w3.org/2000/svg">
    <g>
        <circle cx="146" cy="142" fill="#fff7f3" r="86" />
        <g>
            <path d="m84 168-36 32v40l21.031 8.303 182.969-.303v-28c0-7.589-6.696-15.508-14.271-15.953-11.427-.673-52.028-36.047-85.729-36.047z" fill="#ffce56" />
            <path d="m69.031 252.303c-.502 0-1.002-.096-1.469-.279l-21.031-8.303c-1.527-.604-2.531-2.078-2.531-3.721v-40c0-1.143.488-2.23 1.342-2.99l36-32c.732-.651 1.678-1.01 2.658-1.01h68c22.807 0 47.834 14.947 66.109 25.861 8.24 4.922 16.762 10.01 19.854 10.193 9.439.555 18.037 10.061 18.037 19.946v28c0 2.207-1.787 3.996-3.994 4l-182.969.303c-.002 0-.004 0-.006 0zm-17.031-15.024 17.789 7.021 178.211-.294v-24.006c0-5.725-5.203-11.648-10.506-11.961-5.045-.295-12.779-4.916-23.486-11.309-17.475-10.437-41.408-24.73-62.008-24.73h-66.479l-33.521 29.797z" fill="#4c241d" />
        </g>
        <path d="m268 264h-236c-2.209 0-4-1.791-4-4s1.791-4 4-4h236c2.209 0 4 1.791 4 4s-1.791 4-4 4z" fill="#4c241d" />
        <g>
            <circle cx="211.349" cy="238.803" fill="#6b4f5b" r="19.197" />
            <path d="m211.35 262c-12.791 0-23.197-10.406-23.197-23.197 0-12.789 10.406-23.195 23.197-23.195s23.197 10.406 23.197 23.195c0 12.791-10.406 23.197-23.197 23.197zm0-38.393c-8.379 0-15.197 6.816-15.197 15.195s6.818 15.198 15.197 15.198 15.197-6.818 15.197-15.197-6.818-15.196-15.197-15.196z" fill="#4c241d" />
        </g>
        <g>
            <circle cx="211.349" cy="238.803" fill="#b5a19c" r="6.942" />
            <path d="m211.35 249.746c-6.033 0-10.941-4.908-10.941-10.943 0-6.033 4.908-10.941 10.941-10.941s10.941 4.908 10.941 10.941c0 6.035-4.908 10.943-10.941 10.943zm0-13.885c-1.621 0-2.941 1.32-2.941 2.941 0 1.623 1.32 2.943 2.941 2.943s2.941-1.32 2.941-2.943c0-1.62-1.32-2.941-2.941-2.941z" fill="#4c241d" />
        </g>
        <g>
            <circle cx="94.823" cy="238.803" fill="#6b4f5b" r="19.197" />
            <path d="m94.822 262c-12.789 0-23.195-10.406-23.195-23.197 0-12.789 10.406-23.195 23.195-23.195 12.791 0 23.197 10.406 23.197 23.195.001 12.791-10.406 23.197-23.197 23.197zm0-38.393c-8.379 0-15.195 6.816-15.195 15.195s6.816 15.198 15.195 15.198 15.197-6.818 15.197-15.197-6.818-15.196-15.197-15.196z" fill="#4c241d" />
        </g>
        <g>
            <circle cx="94.823" cy="238.803" fill="#b5a19c" r="6.942" />
            <path d="m94.822 249.746c-6.033 0-10.941-4.908-10.941-10.943 0-6.033 4.908-10.941 10.941-10.941 6.035 0 10.943 4.908 10.943 10.941.001 6.035-4.908 10.943-10.943 10.943zm0-13.885c-1.621 0-2.941 1.32-2.941 2.941 0 1.623 1.32 2.943 2.941 2.943 1.623 0 2.943-1.32 2.943-2.943.001-1.62-1.32-2.941-2.943-2.941z" fill="#4c241d" />
        </g>
        <path d="m248 224h-8c-2.209 0-4-1.791-4-4s1.791-4 4-4h8c2.209 0 4 1.791 4 4s-1.791 4-4 4z" fill="#4c241d" />
        <path d="m60 220h-12c-2.209 0-4-1.791-4-4s1.791-4 4-4h12c2.209 0 4 1.791 4 4s-1.791 4-4 4z" fill="#4c241d" />
        <g>
            <path d="m208 204-48-24h-72l-8 24z" fill="#c1dbdc" />
            <path d="m208 208h-128c-1.285 0-2.492-.617-3.244-1.662-.752-1.043-.957-2.383-.551-3.604l8-24c.545-1.632 2.072-2.734 3.795-2.734h72c.621 0 1.234.145 1.789.422l48 24c1.658.83 2.529 2.691 2.104 4.498-.426 1.805-2.038 3.08-3.893 3.08zm-122.451-8h105.508l-32-16h-68.174z" fill="#4c241d" />
        </g>
        <g fill="#4c241d">
            <path d="m100 180h8v24h-8z" />
            <path d="m156 180h8v24h-8z" />
            <path d="m197.656 141.656c-1.023 0-2.047-.391-2.828-1.172l-11.312-11.312c-1.562-1.562-1.562-4.094 0-5.656s4.094-1.562 5.656 0l11.312 11.312c1.562 1.562 1.562 4.094 0 5.656-.781.782-1.804 1.172-2.828 1.172z" />
            <path d="m186.344 141.656c-1.023 0-2.047-.391-2.828-1.172-1.562-1.562-1.562-4.094 0-5.656l11.312-11.312c1.562-1.562 4.094-1.562 5.656 0s1.562 4.094 0 5.656l-11.312 11.312c-.781.782-1.805 1.172-2.828 1.172z" />
            <path d="m50 160c-7.719 0-14-6.281-14-14s6.281-14 14-14 14 6.281 14 14-6.281 14-14 14zm0-20c-3.309 0-6 2.691-6 6s2.691 6 6 6 6-2.691 6-6-2.691-6-6-6z" />
            <path d="m228.605 158.391c0 2.362-1.914 4.277-4.276 4.277s-4.276-1.915-4.276-4.277 1.914-4.276 4.276-4.276 4.276 1.915 4.276 4.276z" />
        </g>
        <g>
            <circle cx="80" cy="56" fill="#ffe8dc" r="16" />
            <path d="m80 76c-11.027 0-20-8.973-20-20s8.973-20 20-20 20 8.973 20 20-8.973 20-20 20zm0-32c-6.617 0-12 5.383-12 12s5.383 12 12 12 12-5.383 12-12-5.383-12-12-12z" fill="#4c241d" />
        </g>
        <g>
            <path d="m104 96h-48c0-13.255 10.745-24 24-24 13.255 0 24 10.745 24 24z" fill="#aa9061" />
            <path d="m104 100h-48c-2.209 0-4-1.791-4-4 0-15.439 12.561-28 28-28s28 12.561 28 28c0 2.209-1.791 4-4 4zm-43.598-8h39.195c-1.857-9.117-9.939-16-19.597-16s-17.74 6.883-19.598 16z" fill="#4c241d" />
        </g>
        <g>
            <circle cx="208" cy="56" fill="#ffe8dc" r="16" />
            <path d="m208 76c-11.027 0-20-8.973-20-20s8.973-20 20-20 20 8.973 20 20-8.973 20-20 20zm0-32c-6.617 0-12 5.383-12 12s5.383 12 12 12 12-5.383 12-12-5.383-12-12-12z" fill="#4c241d" />
        </g>
        <g>
            <path d="m232 96h-48c0-13.255 10.745-24 24-24 13.255 0 24 10.745 24 24z" fill="#9dc1e4" />
            <path d="m232 100h-48c-2.209 0-4-1.791-4-4 0-15.439 12.561-28 28-28s28 12.561 28 28c0 2.209-1.791 4-4 4zm-43.598-8h39.195c-1.857-9.117-9.939-16-19.598-16s-17.739 6.883-19.597 16z" fill="#4c241d" />
        </g>
        <path d="m144 156c-2.209 0-4-1.791-4-4v-40c0-2.209 1.791-4 4-4s4 1.791 4 4v40c0 2.209-1.791 4-4 4z" fill="#4c241d" />
        <path d="m144 116c-.613 0-1.227-.141-1.789-.422l-24-12c-1.977-.988-2.777-3.391-1.789-5.367.988-1.975 3.387-2.775 5.367-1.789l22.211 11.105 22.211-11.105c1.979-.986 4.379-.186 5.367 1.789.988 1.977.188 4.379-1.789 5.367l-24 12c-.562.281-1.176.422-1.789.422z" fill="#4c241d" />
    </g>
</svg>
   """,
};
