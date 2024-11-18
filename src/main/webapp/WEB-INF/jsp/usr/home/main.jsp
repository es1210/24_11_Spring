<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN"></c:set>
<%@ include file="../common/head.jspf"%>

<hr />

<section class="mt-12 text-center px-4">
    <!-- Hero Section -->
    <div class="bg-gray-100 py-16 rounded-lg shadow-sm">
        <h1 class="text-4xl font-bold text-gray-800 mb-4">Welcome to Our Website</h1>
        <p class="text-lg text-gray-600">A clean and simple platform to explore.</p>
    </div>
</section>

<section class="mt-16 px-4">
    <!-- Information Section -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- Card 1 -->
        <div class="card bg-white shadow-md rounded-lg p-6">
            <h3 class="text-xl font-semibold mb-2">About Us</h3>
            <p class="text-gray-600">Learn more about what we do and our mission.</p>
        </div>
        <!-- Card 2 -->
        <div class="card bg-white shadow-md rounded-lg p-6">
            <h3 class="text-xl font-semibold mb-2">Our Vision</h3>
            <p class="text-gray-600">Aiming to create a community-driven space for everyone.</p>
        </div>
        <!-- Card 3 -->
        <div class="card bg-white shadow-md rounded-lg p-6">
            <h3 class="text-xl font-semibold mb-2">Contact</h3>
            <p class="text-gray-600">Reach out to us for any inquiries or support.</p>
        </div>
    </div>
</section>

<section class="mt-16 px-4">
    <!-- Footer Section -->
    <div class="bg-gray-50 py-8 text-center rounded-lg">
        <p class="text-gray-500">&copy; 2024 Your Website. All rights reserved.</p>
    </div>
</section>

<%@ include file="../common/foot.jspf"%>
