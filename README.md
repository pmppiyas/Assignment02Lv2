# PostgreSQL Q&A Guide

## ১. PostgreSQL কী?
PostgreSQL হলো একটি ওপেন-সোর্স, অবজেক্ট-রিলেশনাল ডাটাবেজ সিস্টেম যা উচ্চমাত্রার পারফরম্যান্স, নির্ভরযোগ্যতা, এবং ডাটা ইন্টিগ্রিটি নিশ্চিত করে। এটি ACID (Atomicity, Consistency, Isolation, Durability) নীতিমালা অনুসরণ করে এবং SQL-এর পাশাপাশি JSON ডাটার জন্যও কাজ করে।

## ২. PostgreSQL-এ ডাটাবেজ স্কিমার উদ্দেশ্য কী?
ডাটাবেজ স্কিমা হলো ডাটাবেজের কাঠামো সংজ্ঞায়িত করার একটি পদ্ধতি, যা টেবিল, ইনডেক্স, ফাংশন, এবং অন্যান্য উপাদান সংগঠিতভাবে সংরক্ষণ করতে সহায়তা করে। এটি বিভিন্ন ইউজারের জন্য ডাটাবেজ আলাদা করতে সাহায্য করে এবং ডাটা ব্যবস্থাপনায় কার্যকর ভূমিকা রাখে।

## ৩. Primary Key এবং Foreign Key-এর ধারণার ব্যাখ্যা: 
- **Primary Key:** এটি একটি টেবিলের কলাম যা প্রতিটি সারিকে ইউনিকভাবে চিহ্নিত করে। এতে NULL মান থাকতে পারে না এবং এটি ডাটা ইন্টিগ্রিটি নিশ্চিত করে।
- **Foreign Key:** এটি একটি কলাম যা অন্য টেবিলের Primary Key-এর সাথে সংযুক্ত থাকে, যার মাধ্যমে টেবিলগুলোর মধ্যে সম্পর্ক স্থাপন করা যায় এবং রেফারেন্সিয়াল ইন্টিগ্রিটি বজায় রাখা হয়।

## ৪. VARCHAR এবং CHAR ডাটা টাইপের মধ্যে পার্থক্য কী?
- **VARCHAR:** এটি ভ্যারিয়েবল-লেন্থ স্ট্রিং সংরক্ষণ করে, অর্থাৎ এতে নির্দিষ্ট সাইজের তুলনায় ছোটো ডাটা থাকলে অতিরিক্ত জায়গা ব্যবহার হয় না।
- **CHAR:** এটি ফিক্সড-লেন্থ স্ট্রিং সংরক্ষণ করে, অর্থাৎ নির্ধারিত সাইজের কম ডাটা থাকলেও অতিরিক্ত জায়গা দখল করে।

## ৫. SELECT স্টেটমেন্টে WHERE ক্লজের উদ্দেশ্য কী?
WHERE ক্লজ ব্যবহার করে নির্দিষ্ট শর্ত অনুযায়ী ডাটাকে ফিল্টার করা যায়। এটি ব্যবহার করে শুধুমাত্র নির্দিষ্ট মানসমূহ যুক্ত সারিগুলো নির্বাচন করা হয়। উদাহরণ:
```sql
SELECT * FROM employees WHERE age > 30;
