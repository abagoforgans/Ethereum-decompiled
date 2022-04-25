contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of address stor2;
address stor3;

function _fallback() {
    mem[96] = 0xa0c7020acb73b42604acb56e76d46e97f1d528cc
    mem[128] = 0x1793e849621a4816ac16d57cd3fb6775a854af99
    mem[160] = 0xebf839dad3f5e306219bc2d38d9679db3b69a3a8
    mem[192] = 0x11af937246eecfa68c32402599802ffb7413d56
    mem[224] = 0xfc372aa2c8e6ce316101c116af1639b9accbc83
    mem[256] = 0x462096a2631fa4974713f0c0e29b43b510f6570
    mem[288] = 0x3b09336c0aa24ed27cab85893bceed1b81005433
    mem[320] = 0x6c24b44eaf4b05b748c3a9c28b6e13864e3dc41
    mem[352] = 0xd2727f87ffa8982cf6a2e951667470e1627563ba
    mem[384] = 0xb8dd815af829126e0a1e300fa63fe5fa68259cc1
    mem[416] = 0x5f07d89cbacb536b6dbf58b3a861b3f91e33593d
    mem[448] = 0x3f5a9ee580c185c0d4ae1ffca9c1d49ef9328901
    mem[480] = 0x8df252da894db4ab205c1b4b8769eec0522f49af
    mem[512] = 0xd17e01f38f53060a7c09e94bccf87f7040acfc7d
    mem[544] = 0x396393a995596083a9171216c2120c5db753e95c
    mem[576] = 0xa7c98d2dd911545cff67e8b67014e762df6fc61
    mem[608] = 0x8676c10da1e42a63aa227f1fb4533dbccb424196
    mem[640] = 0xa182dc62556aa18710ec68fb39dbd45c6f7cacca
    mem[672] = 0x4ecc0796c24cfdec98393890e80338630b6cb1e0
    mem[704] = 0xb9146c4fb32e122357654914c8cb2390eb3c9d38
    mem[736] = 0xba3f19edd15fc7f19256637d8a2d5fd97b713fab
    mem[768] = 0x854e5e11a292a84d1b1fd8ff4a5cb9d3b72e5ee0
    mem[800] = 0xd92ad0dd46b884cde7d58906aa4ecb5e2a2b89eb
    mem[832] = 0xbe47e8e37d33a4b25e65f68240ee75a2f897f715
    mem[864] = 0x3ed2c5277dbfc6213c773bddf91456c27ef2414d
    mem[896] = 0x57f6a5ab8930e1b0a41459b059fdf4fc3771fb24
    mem[928] = 0xd8a6922c77ef52343ab3df19be9b6a63ea32fb95
    mem[960] = 0x8cd20d396324fffd00ae4494b0a078fac9181f78
    mem[992] = 0x45533abefa849c6434aa7246bc88d1cca97c8b34
    mem[1024] = 0x9fece116db70e6801e3689a0809a94e2aad854a5
    mem[1056] = 0x19f9f7090b45780e6b242825fcd53c7f83b56026
    mem[1088] = 0x721101286856779a67e9aeda2357ce8768a5d443
    mem[1120] = 0xf08dbed8aeaf12c14eaccc5898409f49bcb6a396
    mem[1152] = 0xffa8d6f6f1812c9a5441323c1addf5fcbaf734cc
    mem[1184] = 0xddeda3089babd101fa76e98bdb5f1b831bc3ea84
    mem[1216] = 0xbe3f976c0a44ef6287fb635e924e3c93f813659c
    mem[1248] = 0x6821b62f2a11b20fa3697d056844c83658184a8b
    mem[1280] = 0x7d40a10aee799a1d1817ef505f3ee016a2d42327
    mem[1312] = 0xe17002f12a697f24e6d1f2fbba57cd03e2eb4770
    mem[1344] = 0xb8b8a4ac235d22db5cd8b04f6818492f3c368f73
    mem[1376] = 0x5ba0c74f2ac79366263d4aa7177bab27291b6867
    mem[1408] = 0x937fe2c8bd616344a9be33fdec04d6f15f53c20f
    mem[1440] = 0xe601725f464a46f16c3b895fe52b1278ddf8cc36
    mem[1472] = 0x417fb7bfc87894b2bcdbadbdfe08213ccd04410b
    mem[1504] = 0xe5022d4c281615523936a16fd7303f5e165d85cc
    mem[1536] = 0x7c51ddf4db793c235048fa6cf5ec5b3f0711c473
    mem[1568] = 0xbdb7ed8aaa26773d443ce4aa218283e87e574bb0
    mem[1600] = 0x833b4a87e3108429cbadc06d3f4020e455818af2
    mem[1632] = 0xb7cdfa563a4f583b7a6f39e3a76fbd0d8b96432c
    mem[1664] = 0xa6125d7a52085603d0f5c7d6c2b34d79be57475e
    mem[1696] = 0xe8352f1ee03827e3ce52c00e1c5c3bc41569cf37
    mem[1728] = 0x151b53f2497abd5f14a42a9ed6552f7fc25360f7
    mem[1760] = 0x1cdc6d409b8a2fa87ec2fd8741c5c45dc6d8f1d6
    mem[1792] = 0xa47447e160aa47ceadc6f08e3be007afaf3f56d7
    mem[1824] = 0x33538a8491276d43c751e7c87f700478d639a456
    mem[1856] = 0x4b8f6964515b1fe8675ca8294a12602357613936
    mem[1888] = 0x2b1b0d87c68485e6a879bf06f717a4b3cb4f7aad
    mem[1920] = 0x22b9617459fe33281da9364c454889489bae13cd
    mem[1952] = 0x8f83350dd98a0d1d39be69d0d30cc22647f43d5a
    mem[1984] = 0xad869e303a92498bb2d53c77a7ff949bdac047bf
    mem[2016] = 0xd29efd58596feaac4398b8d20803c5c8af1d868c
    mem[2048] = 0xd91433d0425c1ca7c15f95b81fca5c0713093f17
    mem[2080] = 0x962d6d984f1843d45b5436fd94390718a0952a5
    mem[2112] = 0xd728ac9f25f79e4ba20879a39b160a896e43cfc
    mem[2144] = 0xd3c4ad2a24a1e42ff567b37a3ff02e79aa99fc15
    mem[2176] = 0xbb09c39c664b19d12e36adf74963e11f00ce0804
    mem[2208] = 0x4978ef9f8e7a47ec74894330d971f4eaf52577f7
    mem[2240] = 0xc8beea4e151e424afe2eec1336b7f6c9f1ae13cb
    mem[2272] = 0xbdb90e2339fca27b54b677a812ffae373908d20f
    mem[2304] = 0x77875a921342fe8788c2ece463e74cad371aad05
    mem[2336] = 0x6ccb2f66516d7a1f09305c980f62174f1726a01
    mem[2368] = 0x4d8c8d49e380fee03966d9019dd7a4cd3128034e
    mem[2400] = 0x7bc506137688786f8eaf9349adce82894cf356f8
    mem[2432] = 0x5646cbe5632055c09b370da57d32598d0506d60f
    mem[2464] = 0xf4bddccfc4834685642b812b0fffd5ec2139fee
    mem[2496] = 0x4ee5dcaef82cf491ebaf810318191e0af961dd0d
    mem[2528] = 0x68f5892d23fe1628f9f3e94fddc941ab72d8f9cb
    mem[2560] = 0xe3b539f1c7120e818b0c5187025954a27151fb20
    mem[2592] = 0xfa4e7035b34294407e5df1603215983d65e5a773
    mem[2624] = 0x8fd8cfef175ceed446b2c024c1648476a7b850f5
    mem[2656] = 0x6aee03f3015bdf93b0067e34a47974baf52ebde8
    mem[2688] = 0xdf937c33e6de2b066ed35c7149913619042bd57c
    mem[2720] = 0xda51c54e29834272f42c659c5f1aef2525dfd4e0
    mem[2752] = 0x1602621a77117ac6a47c495810b1f114563fb188
    mem[2784] = 0xe32ee067edadfc32ae19074e3be59d410ea5c200
    mem[2816] = 0x1591c0d65168c3214e8c7b1ca3887cbbec05e1d7
    mem[2848] = 0x1da165de5d466b189dabbfeb3dcf448e7e9c3c86
    mem[2880] = 0xa4c4358ea224a5ebccfc8ac81a28d42688e71455
    mem[2912] = 0xad8f85f0c42c866515aa2b4b937760d7f49b63d0
    mem[2944] = 0xaccd5f2caf76034507c4edd4b98fba61e91d8bc1
    mem[2976] = 0xce62efa21c894408c75f92c68f4934e761d06907
    mem[3008] = 0xf33e0a8d1b8874b22894aacc88191a2e51c93c1a
    mem[3040] = 0xe3a9798f2eac879c1d9005e6c05c77bacfd9875
    mem[3072] = 0x8bdeb46d4f6c78e48e3bbc9698e73756a05745a2
    mem[3104] = 0x2ba07ab5648351d846d7b108e11be1f6ec404099
    mem[3136] = 0xb237b50c1930b90ac32408abcaeddec94da31dff
    mem[3168] = 0xf4e53c2beb0e4d4583b60d01531855d2a9cde796
    mem[3200] = 0x1cfaa7f3aa075abc73a7e8abdeec0b28dd6ea843
    mem[3232] = 0x204a6703dcf804bf836e24fb2efc098f651eac3f
    mem[3264] = 0xd53dff8ead102aa16c1c5264bf1f67ca085159a
    mem[3296] = 0x8dbfc15178b644bcb78cc8b2f252e839fc1e326a
    mem[3328] = 0x86b4e86d874483a9fb653f9a517edcabca9958d9
    mem[3360] = 0xc768cad2fa703f549dd4c8c500df9cde1065ad73
    mem[3392] = 0x82bfc93d7747cdb4237207f8bd556b7bda0156dc
    mem[3424] = 0x5dac24567b792a708a5e6a181f6502b9e6c2d38c
    mem[3456] = 0x99169a81ddbce8f75d12bfed69587240eeb9c4f2
    mem[3488] = 0x6639dd122c7271b38eb938ef0a6aea0253a0d6e
    mem[3520] = 0x788d246033801babd91033eea09152bce117f426
    mem[3552] = 0x921377264e4b130c1a0749861f9213a10c404c71
    mem[3584] = 0x5e417bf510783fddea14327bfefe4abb66a70073
    mem[3616] = 0x832110c2861b5b232d4341deef004a13a1681c86
    mem[3648] = 0xf769397e62490968446045cce6c7ffc4a652ae81
    mem[3680] = 0x5674beb9845d921a4f399ac8761c990228782391
    mem[3712] = 0x33fef14e2a2e77257ced88f6237ca889f35bef73
    mem[3744] = 0x65af547c8dd28ee147da89eb99b60483e12bf800
    mem[3776] = 0x60be518a6b3ed017421d7a98f87befd5174b49ed
    mem[3808] = 0x370900faf6cdeaa8c7943ff15daf63f3f6fc8e72
    mem[3840] = 0x861d06c3f74dca2332d74254d4b1295f3916beb6
    mem[3872] = 0x4f52433ac46b9e8916afdf779750ab0428265d40
    mem[3904] = 0xff4525abca9fef7800b06f0a22aae3bbcc51d3
    mem[3936] = 0x171d1d84edc8264edc88ef8945d9b00811f0a786
    mem[3968] = 0x217fdf12d85f5067e7812c1742fce11890272f33
    mem[4000] = 0x8ac9a4b7eef3be3caeb419d8ceb6c306cbeba157
    mem[4032] = 0xc435d84b4db4bc91de9fbc498fa12c5c9497fb8a
    mem[4064] = 0x8af5eaf8e4e223659483705cd5ba1fee822f1185
    stor2.length = 125
    s = 0
    idx = 96
    while 4096 > idx:
        stor2[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 125
    while stor2.length > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    stor0 = 0xf6f209c6c031b1560d073d5e82b380c40cd02469
    stor1 = 0x342ba159f988f24f0b033f3cc5232377ee500543
    stor3 = stor1
    return code.data[9285 len 1109]
}



// =====================  Runtime code  =====================


address tokenMasterAddress;
address sub_2df012cdAddress;
array of address addresses;
address tokenRewardAddress;

function tokenMaster() {
    return tokenMasterAddress
}

function sub_2df012cd(?) {
    return sub_2df012cdAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return addresses[arg1]
}

function _fallback() payable {
    revert
}

function tokensAirdrop() {
    if tokenMasterAddress == msg.sender:
        idx = 0
        while idx < 124:
            require idx < addresses.length
            mem[0] = 2
            mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[100] = addresses[idx]
            mem[132] = 10^18
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args addresses[idx], 10^18
            require ext_call.success
            idx = idx + 1
            continue 
}



}
