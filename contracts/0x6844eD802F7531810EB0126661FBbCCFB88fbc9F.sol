contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 7
    stor0.length.field_8 = 'Storage' / 256
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
    return code.data[494 len 6715]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_898572a6;
array of struct children;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function children(uint256 arg1) {
    require arg1 < children.length
    return children[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_898572a6(?) {
    require arg1 < sub_898572a6.length
    return sub_898572a6[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x85196da9269b24bdf5ffd2624abb387fca05382b
    mem[128] = 0x9543d4b5c2236e5ed9de1bbe527b1f6da955d358
    mem[160] = 0xeaa24e6727fa4379dff23aae9fd5ac7042200ec8
    mem[192] = 0x941f1cff8fe69d31780a71fc3a864a360516676a
    mem[224] = 0xc2b3cdf87b449e61a7765795b9b99c0cd1487ff
    mem[256] = 0xcba53ad7b53bcd27b4ae41ea720f6b77ca3d4177
    mem[288] = 0xd58fb7eaa42556fb570e1d30d5a9625db8896b1d
    mem[320] = 0xf7f93ecbd4691478be4377d6698a9ec374a25ea9
    mem[352] = 0x4a9e9ea24832e29647a5880f226d437b14398e94
    mem[384] = 0x3307e2fd7616913c1ef2b7dd0fdb4e9cb0441e1
    mem[416] = 0x71f81425dcbb85a9edfcb6b754d850de67b011f7
    mem[448] = 0xbafeb85770125870e5855959c4c521130c056fe4
    mem[480] = 0x9508adbb72dbb3d34b2814af111741d09dc7ad5e
    mem[512] = 0xe9da6a62e05a53e46a3963b245529147996b6b95
    mem[544] = 0x9494850d7bd064378b26359a6b3a3c26e10660b0
    mem[576] = 0x4d27d62720936d808b7a595f5cb96564ba2c5fcd
    mem[608] = 0x18c32a5716321e80ab2a65bf2ddaa9a93613996f
    mem[640] = 0x747d9d302f50f9ee5dca25afc12937b8205864a6
    mem[672] = 0x93c1920b1e43f78bb85da56a5d42315605dc6fe3
    mem[704] = 0xa3581f381d22b3ced29b42123deafa7fa9ef0ddd
    mem[736] = 0xb6b6af6d517a9a777dc7934b0106e62f6aaf5935
    mem[768] = 0x6ec14a2a70fd861201eb1fc9b5354322f89dfe88
    mem[800] = 0x586712eadd6cdb3800f25337b6c4c44784f8f64f
    mem[832] = 0x7791db9b997d608869b84173acd3f52f58046b4a
    mem[864] = 0xb9b634e5c703782126460a220e5eeaa068934792
    mem[896] = 0xad94a85bc2d53d576e310cc86dd95c3d8fa4ced1
    mem[928] = 0x8215821b1266c921a8ed14cb97f3eabe666794
    mem[960] = 0x47989af11f905e300fedb02d2e3d91926d493866
    mem[992] = 0xaa0f2dd739d3a0aa2f5de92dedcfb92f94bd53dd
    mem[1024] = 0xbf62375e4578a7462ca77d24619a9e976a72c9c5
    mem[1056] = 0x6e016905bea2fe4ac538c2a264d9715bf9020142
    mem[1088] = 0x94e69108ddcc97a3f3bc41c53c50610edc154b52
    mem[1120] = 0x9485a1ed207458bf9bde40aabb1648318bb86259
    mem[1152] = 0x62f96f47f5bba5e84264e7e439ec93b90987894f
    mem[1184] = 0xbe61839852585cf768f98c612d2bc7cc6ed052ae
    mem[1216] = 0xf713cf91108598f3064da330bdc7f0fc7244c6fa
    mem[1248] = 0x64d0ac125f04c9b1058e67192467be095a575e06
    children.length = 37
    s = 0
    idx = 96
    while 1280 > idx:
        children[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 37
    while children.length > idx:
        children[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1280] = 0xbe887fac27a2d354f2ac26b0ef111fbaeed119c9
    mem[1312] = 0xa5b7da1e464fdab439c5723b7c6f2496238146ae
    mem[1344] = 0x69f681526a3fe28bcffaf35426e8cc665f678274
    mem[1376] = 0xee931a4b4f352c8a4a85569cf7da51a29d28efac
    mem[1408] = 0x80b5f2decb1710b43ee09dfdbb1d3e52f85eadb4
    mem[1440] = 0x82fe7753c9167de986e0a2c3e54deb8aba2b8876
    mem[1472] = 0x4239870008c1b3d447af124b950a9bb2037416e3
    mem[1504] = 0x3cfbe33e582d30f5857d2a46b0907c0b69982fd2
    mem[1536] = 0x9be352705d7c015be3e41a91f17bdb9bb26be5e9
    mem[1568] = 0x76710acdf5e34e3a6c597992fbf680359b11ac97
    mem[1600] = 0x56fccfdc86a197e746e5d3620a31dbf914cf4e68
    mem[1632] = 0x4bf2421eaaae1b8a55ff3e7dff4959c7746ec1de
    mem[1664] = 0xe7197adb61a1686d0b7ae8453bd4e3390d15ea63
    mem[1696] = 0xe44695108c4d6730aa50f7acf5e9a102dd975282
    mem[1728] = 0x42753db54210d9c692a4b4dab4679df3203ba1fa
    mem[1760] = 0xc4e44e0f935202a09c3b1ecfa64b2dfde516bcdc
    mem[1792] = 0x21a7ce66c532191e61e0cfd1b0fa409ec2e210a5
    mem[1824] = 0x930766b93328e03027cd79815074c7462366d84
    mem[1856] = 0x4d1a8deee4ad758adf58ba58a207b4b536080916
    mem[1888] = 0xa6cd09218b7dfca0d0a00a53cda8312579278e6
    mem[1920] = 0x5aea42d2ae08393e0c88111b698ce1708ea55cd
    mem[1952] = 0xe19458a6d88a725b88210cbd12670d6eb9908276
    mem[1984] = 0xac311ded2e98aebb0299708304829cd4ef65dd6a
    mem[2016] = 0xd15056ba74650979ce8a08faf3eba0274e61f660
    mem[2048] = 0x4dfe60f3eec6bef5044d7d562e96509c5b97f9ce
    mem[2080] = 0x4fe4e03cd354488d950b92dcc4ded991e44cf10d
    mem[2112] = 0x5eb0581419421455ef94619daaa5d5d592be11
    mem[2144] = 0x6e11d99fc1d639a10e793e8daf75aef1cb98d23b
    mem[2176] = 0x66926961d82ced45a98af56893a9f26f47ac4dc3
    mem[2208] = 0x2adec6cfd5fe743e78e1e23aef7c096eb60f5b3c
    mem[2240] = 0x9f35321e914040258f0cb1ce47701512a5428d82
    mem[2272] = 0xce28bef2001e1c9a25e96e3e93e56e0a9da34da3
    mem[2304] = 0x12ec0d082b21f2927045203fc21f46f6ee0a2f53
    mem[2336] = 0xb4020f3c4f1e36fe640ba11478a3f732c82dddcc
    mem[2368] = 0xc9d150b184d636aed8e3d69438ac724ce1713afb
    mem[2400] = 0x5c1fc01494219147888414d60e158fb927e413e2
    mem[2432] = 0x9b037ddf3fc7594ef53bee4a9b7988001b20eb19
    sub_898572a6.length = 37
    s = 0
    idx = 1280
    while 2464 > idx:
        sub_898572a6[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 37
    while sub_898572a6.length > idx:
        sub_898572a6[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_898572a6.length:
        if not children.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_898572a6.length, children.length
        else:
            mem[2596] = address(children.field_0)
            idx = 2596
            s = 0
            while (32 * children.length) + 2596 > idx + 32:
                mem[idx + 32] = children[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_898572a6.length, children.length, mem[2596 len 32 * children.length]
    else:
        mem[2564] = address(sub_898572a6.field_0)
        idx = 2564
        s = 0
        while (32 * sub_898572a6.length) + 2564 > idx + 32:
            mem[idx + 32] = sub_898572a6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_898572a6.length) + 2564] = children.length
        if not children.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_898572a6.length, data=mem[2564 len (32 * sub_898572a6.length) + 32]), (32 * sub_898572a6.length) + 96
        else:
            mem[(32 * sub_898572a6.length) + 2596] = address(children.field_0)
            idx = (32 * sub_898572a6.length) + 2596
            s = 0
            while (32 * sub_898572a6.length) + (32 * children.length) + 2596 > idx + 32:
                mem[idx + 32] = children[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_898572a6.length, data=mem[2564 len (32 * sub_898572a6.length) + (32 * children.length) + 32]), (32 * sub_898572a6.length) + 96
    require ext_call.success
    emit 0xddf252ad: arg2, msg.sender, arg1
}



}
