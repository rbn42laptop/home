
#虽然xbindkey和tile的相性,但即使compiz0.8也只有24的按键组合.虽然我不知道我是否真的需要更多的.
#不过xbindkey是提供了超出24以后的扩展余地.
#实际上tile中除了focus以外的应该配合xbindkey使用也没有太大问题.
#另一方面感觉compiz0.8的focus似乎和xbindkey也差不多,好像也有双闪烁.

pkill xbindkeys

xbindkeys -f ~/config/rc/xbindkeysrc
