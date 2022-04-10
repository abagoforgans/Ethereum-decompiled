contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage14' / 256
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
    return code.data[494 len 7053]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_fb6b43df;
array of struct sub_c4cc9438;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c4cc9438(?) {
    require arg1 < sub_c4cc9438.length
    return sub_c4cc9438[arg1].field_0
}

function sub_fb6b43df(?) {
    require arg1 < sub_fb6b43df.length
    return sub_fb6b43df[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xda706cb096c884e55b97b0984fcce1b3ac2e77f5
    mem[128] = 0x92ce3f06231b56f41d284c1ac9ba7c27bbe1a7b1
    mem[160] = 0x2bd21d46d44eb1ae99fd96f3b636eca722bac320
    mem[192] = 0xfd55979659ac427f3c7f36dc9ae46cb9de8b95c5
    mem[224] = 0x42ae8821cbe791bceb07b150c134840d459c9dea
    mem[256] = 0xa135486687d9fc8e403254cf701e529dbd805bd9
    mem[288] = 0xab70bd56966a03fd5647da64605905e512db800f
    mem[320] = 0xe04e2fffe02c1578c05c16ae191f3126c5377dc9
    mem[352] = 0x40c0626fcda8b8be8801409e36b060d6f2adc697
    mem[384] = 0x10ae89b1f830881cd462292d31942de26dcd08af
    mem[416] = 0x122929d511500f2ad4bf8f8f1181c90077ef60e8
    mem[448] = 0x13bb95ee46dc680018bc6f53532ffaa1519d402b
    mem[480] = 0x84112831f0750b3a6d546a9c53113d06b238e718
    mem[512] = 0x64c82bea2c337c7b5287b93d68b7cbe2d19ce514
    mem[544] = 0x5423c2cb5e30d1303b1e9904e70786dd73b1618a
    mem[576] = 0x8fdf0133e7e31c96c79c114a7600722c113bd86b
    mem[608] = 0x34a8e35b9f0be98c8232c88b1745afb4f4b97257
    mem[640] = 0x39ff6edc78ec5ad9c9c90986c20d5486d6756378
    mem[672] = 0x369131496557667abd59ee7143ece94fc67616ed
    mem[704] = 0xbc24fefc9b7924f8910a36cf277f5a644aaaef37
    mem[736] = 0x80ffc3a980f45e7092a46d1f9af631271b2f7e35
    mem[768] = 0x7030b15b9cb54693a826b3cd4e010c365c1b4a2a
    mem[800] = 0x1bca1f340e1114f80e330b43f1777579df870ef3
    mem[832] = 0xdd5bd65958fd7120a981c612e06cc6a94af5289c
    mem[864] = 0xf4a0bae4a1287d3b7b52bfe226d9728e73577cef
    mem[896] = 0x174670c5ad610cfb0156ff6045c70193aef869
    mem[928] = 0x6da7f10fa184bcbb7f50dcc89bb59b410d5aa613
    mem[960] = 0x60c945117ebf71bb16c18d109f7996485962f7bf
    mem[992] = 0xeaa2841c31365db20a33fdd4e194eba7ecf14e05
    mem[1024] = 0x1c265191a6d652b2def9fbe4bc03d0fb74bc5e1e
    mem[1056] = 0x4aa80e334b1e066ae295f3cd4ccc5f0cbfa9701c
    mem[1088] = 0x56062df934053261350ab561a64f2b8ee23666ef
    mem[1120] = 0x5d4fbbec2e7fc67605dede8daa852353658ffe41
    mem[1152] = 0x2defe6732f1fe08d6aec45603564387003569019
    mem[1184] = 0x1238905b2240efe49be6a42cc848d3b5084a24ae
    mem[1216] = 0xd75009e7fdfc3cee1b2bc79aebef5bd05867e523
    mem[1248] = 0xf6e91d9abcacccb2015d8e41d8ca900c0c8e40a5
    mem[1280] = 0xbf566e7bc895f895032179572275c39618fa41ff
    sub_c4cc9438.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_c4cc9438[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_c4cc9438.length > idx:
        sub_c4cc9438[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xb3a096ae14ca183fea13071264ab9132ca9bfed5
    mem[1344] = 0xfa69906d5eb2c87cbcaecd4bb8506794c9e4dc8f
    mem[1376] = 0x21f1df7bc554220d5997e433e3287a12a6ed5eb7
    mem[1408] = 0x1294f0b41a9d72982f993345fa3adf956bdb9639
    mem[1440] = 0x64fa86b1ca63c552a80b04e54385ca4fa104063e
    mem[1472] = 0x5859fcdb1d6ad28fc2aacdfd0d14af65293a213d
    mem[1504] = 0xfa6dc1124393cb20f559dd0066918a94a6449ba1
    mem[1536] = 0x69c3e3ef283cc556a4a4e5465daab51db9fa8330
    mem[1568] = 0x6eb7d4d3a34d7739f3967750e272dd7f93b5d43
    mem[1600] = 0xd1e8d5198d1af4c7627b51a104e22c17545b5fdf
    mem[1632] = 0xb37dc155fbd2b7bae2efcb9a8dec8f5659d7c433
    mem[1664] = 0xa1591f35f12a3b77aa14944450de80bcac349bd8
    mem[1696] = 0xdf59fd3303bde9a6c5f50837632c036c789ea707
    mem[1728] = 0x4b3fe742e58fe1030456846b6c108c9a89d33015
    mem[1760] = 0x5b89b7329b4c075372011b9ac5a9b56e5f583c2c
    mem[1792] = 0xf33f74d696a950fd25ca39b77b5714b656aada26
    mem[1824] = 0xf810386eeaf29ec2ddac4cf4562af8225030116
    mem[1856] = 0x15c4ac64cacc0246865ab6d61327206c2e0ae6c5
    mem[1888] = 0x6ac9a91a0dda63aceef247cb38cafdfe3187e120
    mem[1920] = 0x9b5efa6f2d24c4e36baa1dc04a9f541468974e26
    mem[1952] = 0xb6eec0182939ae1f45c964dca58fc9e780ab943e
    mem[1984] = 0x2f08fd787d40d254706d2f919e8b2dc60633255d
    mem[2016] = 0xf67ac17bd1deb90cb01509d9fb8682083ab524f5
    mem[2048] = 0xcbd16610473b4a275fd542932ae69b23697e05cb
    mem[2080] = 0x3df51cb2a07e5b3e0a851f60ab06a00195ae8d07
    mem[2112] = 0x4f22357ac14314c623f536fcea9743ae9a1b08
    mem[2144] = 0x975f5788e1729cafded75e37e75f32fa8b1b97bf
    mem[2176] = 0xfaceb2e149f3b563c8608f5571db92cdb9b0e1d
    mem[2208] = 0x3119cf74f7ac1cdea9c2db27e0aa2b46686df6a5
    mem[2240] = 0x45831a2200f48034057ad82ad25a7fbacc509a86
    mem[2272] = 0xb801040cedf64344acc6c6ab25121ed0eb75a25a
    mem[2304] = 0x1b7a8a84b0b2511f6f92387b330df9936be9a64e
    mem[2336] = 0xd53a77cdd91124d832caf641115b71e83b0e7efa
    mem[2368] = 0x63e6b84ab8c00bdf389f746fed98b955f2f05c22
    mem[2400] = 0x2821496db55a77a2ef8387c9d7485ed7ca9bfbda
    mem[2432] = 0x1a77500f7d39625eda1a82607e0a11d65f16c884
    mem[2464] = 0xa985aacc561e80db1aa0587a7b0d62a1617e9edb
    mem[2496] = 0xce796c3b99d841834b43da5006ffc8e4d82283ab
    sub_fb6b43df.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_fb6b43df[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_fb6b43df.length > idx:
        sub_fb6b43df[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_fb6b43df.length:
        if not sub_c4cc9438.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_fb6b43df.length, sub_c4cc9438.length
        else:
            mem[2660] = address(sub_c4cc9438.field_0)
            idx = 2660
            s = 0
            while (32 * sub_c4cc9438.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c4cc9438[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_fb6b43df.length, sub_c4cc9438.length, mem[2660 len 32 * sub_c4cc9438.length]
    else:
        mem[2628] = address(sub_fb6b43df.field_0)
        idx = 2628
        s = 0
        while (32 * sub_fb6b43df.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_fb6b43df[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_fb6b43df.length) + 2628] = sub_c4cc9438.length
        if not sub_c4cc9438.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_fb6b43df.length, data=mem[2628 len (32 * sub_fb6b43df.length) + 32]), (32 * sub_fb6b43df.length) + 96
        else:
            mem[(32 * sub_fb6b43df.length) + 2660] = address(sub_c4cc9438.field_0)
            idx = (32 * sub_fb6b43df.length) + 2660
            s = 0
            while (32 * sub_fb6b43df.length) + (32 * sub_c4cc9438.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_c4cc9438[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_fb6b43df.length, data=mem[2628 len (32 * sub_fb6b43df.length) + (32 * sub_c4cc9438.length) + 32]), (32 * sub_fb6b43df.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
