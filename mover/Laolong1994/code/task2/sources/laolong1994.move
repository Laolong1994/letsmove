module task2_1::laolong1994 {

    use sui::coin::create_currency;
    use std::option::{none, some};
    use sui::transfer::{ public_transfer, public_freeze_object,public_share_object};
    use sui::url::Url;

    public struct LAOLONG1994 has drop {}


    fun init(usd: LAOLONG1994, ctx: &mut TxContext) {

        let no = none<Url>();
        // let url = url::new_unsafe_from_bytes(b"https://q2.itc.cn/images01/20240223/cd0cd2f403d944fea1826a3df2f8d60d.png");
        // let yes = some<Url>(url);
        let (treasury, coin_metadata) =
            create_currency(usd, 8, b"LAOLONG1994", b"LAOLONG1994", b"this is laolong1994",no, ctx);

        public_freeze_object(coin_metadata);

        public_share_object(treasury);
    }
}


sui client call --package  0x2 --module coin --function mint_and_transfer --type-args 0xc34c6e356a01cc6c2cb8c6aa1e87c0c8cb2969bbbb88c93db91552dfa6d06c8c::laolong1994::LAOLONG1994 --args  0x154db28c5acd4ded1fbbb89534f63beda792201cda56885a2c9e74a25383b27f   12300000000 0x4a8ff94757bdcc3e50a36f2c006c25f5cf53b90cad39393d5821caf34c4419d8
<<<<<<< HEAD

sui client call --package  0xee25a9c7e62c60df6d043d1c49749e0886959a18952787fe45a5fd944715b275 --module task4 --function play --type-args 0xee25a9c7e62c60df6d043d1c49749e0886959a18952787fe45a5fd944715b275::task4::Game --args  0x0507e2cd3a519714c0eabe97ffc39578f6812a2f4e47caf94cee7a68c4ef229a true  0xef48e671bddb13245ef5f4e23e9724cc27fc86c8b36faa1b44fe4b8c5feab32d 0x8
=======
>>>>>>> 2aaa1a385643defe20b96261aadd3de2a69ab76f
