require 'formula'

class Libowfat < Formula
  url 'http://dl.fefe.de/libowfat-0.29.tar.bz2'
  head 'cvs://:pserver:cvs:@cvs.fefe.de:/cvs:libowfat'
  sha1 'f944ebac326f4a8bd1437ff995d0b8201280434c'
  homepage 'http://www.fefe.de/libowfat/'

  def patches
    # Building with clang fails on CAS.h because it returns value from void function
    DATA
  end

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}", "MAN3DIR=#{man3}"
  end
end

__END__
diff --git a/CAS.h b/CAS.h
index 27b3219..1308050 100644
--- a/CAS.h
+++ b/CAS.h
@@ -53,7 +53,7 @@ static inline size_t atomic_add_return(size_t* x,size_t val) {
 /* *x += val; */
 static inline void atomic_add(size_t* x,size_t val) {
 #ifdef USE_BUILTINS
-  return __sync_add_and_fetch(x,val);
+  __sync_add_and_fetch(x,val);
 #elif defined(__i386__)
   asm volatile ("lock; addl %1, %0" : "+m" (*x) : "ir" (val) );
 #elif defined(__x86_64__)
