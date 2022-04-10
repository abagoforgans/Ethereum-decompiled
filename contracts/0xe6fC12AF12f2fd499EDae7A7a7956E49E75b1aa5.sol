contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage28' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'STR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor5[0x408a302b84c5747fb668234f6ca6d3c63f305611] = 10^15
    return code.data[494 len 6917]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_a456d2ea;
array of struct sub_4600efb2;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_4600efb2(?) {
    require arg1 < sub_4600efb2.length
    return sub_4600efb2[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a456d2ea(?) {
    require arg1 < sub_a456d2ea.length
    return sub_a456d2ea[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x506f8c97b145b412bb4300e2cc58d672e38d88bf
    mem[128] = 0xff7a7300efae4820e80f7fa5d5561b62c16a0d38
    mem[160] = 0x58fddcf5dbbcb112378b94b99bfe6476b8f9a915
    mem[192] = 0xcd9c16b2a91bbc2613560e7b87b3a0e6fa5563fc
    mem[224] = 0x41ddb00518ad6859fb329622ee5a87cb6801b7
    mem[256] = 0xa920f43e6bc6aa7e2bdf84eb165b736306b9a28e
    mem[288] = 0x5d3402cec5d0a755a02e6fa2a1e3420b9d0a26f
    mem[320] = 0x16b1ffb519cbf98a0eee9d9356c6efaa1e991888
    mem[352] = 0xc6f8a608738b2edcf770a1174cfc020aec8d4887
    mem[384] = 0x51ab926f7d2864e4e9b253f06cd068038ccef449
    mem[416] = 0xa9861964d052561544f40c612a9f9a6d6fdacf7
    mem[448] = 0x1cda3d9fe175e7a42c5c79a75fbd25141f9252bf
    mem[480] = 0xcdcb5edc0389fac73ea39a7667eee302fdcf4aa5
    mem[512] = 0x3c56bc601c6f17a012d7e96f926e9f7eeea435eb
    mem[544] = 0xe91aac08122358055bddbdb5b713f113b631e7ab
    mem[576] = 0xb641ffd0747ca048aef0779f207d6f32c179c283
    mem[608] = 0x9ad2c00950885f2437a8afd63d33534fefd481c0
    mem[640] = 0xc96ce7281eb0179bfab643c5f24d166508eb26b2
    mem[672] = 0x1c499586a73303442bc5dce946fe093cfc3a0211
    mem[704] = 0x2fa6016d696e4196fea36a243661319c69f93cc0
    mem[736] = 0x36bb857ca5a86621f65d2c243b7013e62df51abf
    mem[768] = 0x808a595c383c493450c09171db4cb28de6073d
    mem[800] = 0x6db45a323e226157db21caae467cfbc81b0680a9
    mem[832] = 0x85e9d8c21e4faac69c9060b9641ba51edd31002
    mem[864] = 0xfb2f30a2ab89f332ae57d585176febc1b52c5653
    mem[896] = 0xa3fe88573f6c96c36585a205a8b0dd273580e984
    mem[928] = 0x621ac1f8e016f7bd03182b0aae9ceeb1615eb9b8
    mem[960] = 0xcdbc891e305aa5aacab64837870fcaef8831266a
    mem[992] = 0x1089928a18cf6e6bece5dc07ca78f9545367481c
    mem[1024] = 0xbeb57c91a9abdf7841edba6dbb7138ce509097f4
    mem[1056] = 0xc0e5b2cacbee6dfc4e3acc9c55c24cb457472e95
    mem[1088] = 0x4335bcbcfc2332126a8c22c7be8bb867ea14c233
    mem[1120] = 0x7324eeebf48065c42e9f8be61604a1b1269fad80
    mem[1152] = 0x58ccba006ce634ff824088cca68481422421c
    mem[1184] = 0xbe1cbe09f0f9bd51dbf1c1a0888d602dbe2a70dc
    mem[1216] = 0xb0c5a8405cac4683bef3d2c209e22b7f4ecc1d11
    mem[1248] = 0x89528aead1238148d12a1cbd06901265cded8f64
    mem[1280] = 0xd197f21b61392e3613a8e0eaddbef54ad68d6046
    sub_4600efb2.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_4600efb2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_4600efb2.length > idx:
        sub_4600efb2[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xb1436d31b3c79c51b9d9369921dbae511c490f09
    mem[1344] = 0xa70f579aa46c0105ffae7bcd3e3f9d7af7422765
    mem[1376] = 0xe2069bbd547e86410108e9ee58e9b84415da1681
    mem[1408] = 0x328da688684954d69064adba1834db88e666f96e
    mem[1440] = 0xaeb3a8e2dd2bfab15534cfe691cc907ed02255
    mem[1472] = 0xd57b6fb23941dd745c9b3b9eb529dde8a2c848e5
    mem[1504] = 0x89abed9e8b3dda07a44bbf0e964b5198cfa6839c
    mem[1536] = 0xf9bd2ae68bf84f9e2d8c277f9a1f6c435e62f56f
    mem[1568] = 0xbc26e78e62672301a15531a34a11276034b80981
    mem[1600] = 0x609e322e84095add166d0fb7995c51fee496955c
    mem[1632] = 0x8d25b3e415ee15bc404a7b46dd866f2f86ddbf0f
    mem[1664] = 0x600d5f2f80e4d7ce0cf81cf61b7fa239ce9a2040
    mem[1696] = 0x874c0b86f5239a00a3ce96db0f2dbbbdcdf33c7c
    mem[1728] = 0x29d634a9755246b64b74645ffdb8c2ce9af43a21
    mem[1760] = 0xa87a6017687f5d7607a4dde37624fa8eec9b0d45
    mem[1792] = 0x7972f6640e56b16236c6420e80a980f8d0414b17
    mem[1824] = 0x7191c44dcd95cda8eac68c72c7a5f286ace7917d
    mem[1856] = 0xf25882df969a08cb0f95fd68f6a11fec7d1b777b
    mem[1888] = 0x4216c97112cf8bb7d85810409240585abd6e335b
    mem[1920] = 0x3766bec33013e3f0b175e921c60b0d4aeadf8b96
    mem[1952] = 0x1b1c8c35e42dbe258677b3389af8a8e14975288e
    mem[1984] = 0xa329c0648769a73afac7f9381e08fb43dbea72
    mem[2016] = 0xd230e62d20e3ab2329c9500dc4420faedd130c87
    mem[2048] = 0x2e524c70a2a4e9a3b7b975c7e434825ca7b7fd42
    mem[2080] = 0xbeb33263b09d388f4acc50037c6068913a21e4e9
    mem[2112] = 0xcaba49af684201ecde0d8ea8a3ab1361e751c53b
    mem[2144] = 0xe80cc36521ac55354f21257e2979c76a9cc1883
    mem[2176] = 0x9edbd018b6db2905a87ff803a568fab68883f0c4
    mem[2208] = 0x7d3d84d0c64acc82e84057824ec030cdfeff52dd
    mem[2240] = 0xd75d4ba2b482edf51875ff9c8b16c6e8cc164db5
    mem[2272] = 0x232d9c935128bee8741c558323019ad9e852c837
    mem[2304] = 0x4ba69565a8b8d6198cbbd8190f4e54ca41d5acd8
    mem[2336] = 0xeb09f5ba099aeb6c8e78fd4a662291a86048ac68
    mem[2368] = 0x39f867a35c444f1d4070bb961ff060483b5c9a
    mem[2400] = 0x7e9db6151c8e73b2f0c270692647717a9c56f62
    mem[2432] = 0xa5780125ee54c5825f01f81d93a0ac526e10f16f
    mem[2464] = 0x5868588ab6fe961a43a43ef0d3f228ffde9cc9d1
    mem[2496] = 0xd5ad2aa1cc2fa833b1c05579f02a821b4e7917b3
    sub_a456d2ea.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_a456d2ea[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_a456d2ea.length > idx:
        sub_a456d2ea[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_a456d2ea.length:
        if not sub_4600efb2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_a456d2ea.length, sub_4600efb2.length
        else:
            mem[2660] = address(sub_4600efb2.field_0)
            idx = 2660
            s = 0
            while (32 * sub_4600efb2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4600efb2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_a456d2ea.length, sub_4600efb2.length, mem[2660 len 32 * sub_4600efb2.length]
    else:
        mem[2628] = address(sub_a456d2ea.field_0)
        idx = 2628
        s = 0
        while (32 * sub_a456d2ea.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_a456d2ea[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_a456d2ea.length) + 2628] = sub_4600efb2.length
        if not sub_4600efb2.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_a456d2ea.length, data=mem[2628 len (32 * sub_a456d2ea.length) + 32]), (32 * sub_a456d2ea.length) + 96
        else:
            mem[(32 * sub_a456d2ea.length) + 2660] = address(sub_4600efb2.field_0)
            idx = (32 * sub_a456d2ea.length) + 2660
            s = 0
            while (32 * sub_a456d2ea.length) + (32 * sub_4600efb2.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4600efb2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_a456d2ea.length, data=mem[2628 len (32 * sub_a456d2ea.length) + (32 * sub_4600efb2.length) + 32]), (32 * sub_a456d2ea.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
