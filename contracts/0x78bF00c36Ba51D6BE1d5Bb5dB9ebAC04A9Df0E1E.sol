contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'storage101' / 256
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
    return code.data[494 len 7162]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f2fc214e;
array of struct sub_4251a986;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_4251a986(?) {
    require arg1 < sub_4251a986.length
    return sub_4251a986[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_f2fc214e(?) {
    require arg1 < sub_f2fc214e.length
    return sub_f2fc214e[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x62a4ad6213825295357330dda7bcddfc1d0ed7da
    mem[128] = 0x309dab12fc300304ec6a8a494f0cdad5470e4cc3
    mem[160] = 0xbeddadd1433a00cab6e07c00a5e29ce1586f587f
    mem[192] = 0x18b9911f896e47608e4a63fe417b7bbe261e4dc3
    mem[224] = 0xd575524c79985d3bbe7d5de3b05dd2352b33c333
    mem[256] = 0xeeea011c535944f8b7ba4beac0ebdb530abd482d
    mem[288] = 0x90798f74cbfff7d197a01b61d0be78edcd0621da
    mem[320] = 0xc41b8d659bf715ba5363ba048e94eb67e3029438
    mem[352] = 0x4cff2a69d03df345a9e6fb3d379da6997ba9e26e
    mem[384] = 0x4d7e05b0bb4681e001329cc865a807d5868c0376
    mem[416] = 0xf4c55107153d4ef417a5162cfcb78413be0dfa5
    mem[448] = 0x7c08527235e45edf9e43f80ff6f4b098fe5ee661
    mem[480] = 0x269ec02003a4d673230e085b3447ac4fc168d615
    mem[512] = 0xf5a92844c301d81fe83bc85b9968988228945904
    mem[544] = 0xf31c9e29dfe54982ef6e506d8402c9c053238c
    mem[576] = 0x3d41a01b4cb9f9107c6bd6ae45dc28d46c3ece52
    mem[608] = 0x7a46bd2f0bbbc0264c854de1caf605a67f2176da
    mem[640] = 0xd227456ea12ff2adb208d01da18c9429f49bc687
    mem[672] = 0xc2bc617c5a9eba0d2b4c3803d8588df10e53c975
    mem[704] = 0xccabdd5c537d525c4d3cd1823cc000bf8520a7c0
    mem[736] = 0xe2355aa9742d71615497919b8757f7a46176787b
    mem[768] = 0x2bf82f81dfcbdd43b25bf11f2091b04e54bf7112
    mem[800] = 0x438f21786899d82705752031be72c111035c2be
    mem[832] = 0x2336bfa43bc580f6c482a4cd75f70648cdd2ca45
    mem[864] = 0xf4c61c1596e89cad54f299a5472556df3a0cc620
    mem[896] = 0x2613a80962719a71b9c54d5717e1daa94b2ba00
    mem[928] = 0x20598e9c204b1c17ca983ef1564097bcda5f28a6
    mem[960] = 0x7a4ea18bfc95c26179b2afa49c7043b7c9e597b5
    mem[992] = 0xfba17024697a7a0070ca2fb2c0ff2d23480d649d
    mem[1024] = 0xb7451783359f4f8b01620909c4222c8bee49a69a
    mem[1056] = 0x37c43517f1692d3f6ca46e4b7108f240ff4d0d7d
    mem[1088] = 0x1031f9149ad788033b9641bad1984f562b91fcf1
    mem[1120] = 0x9b1b83081878ff28fce7b159ba723546c79ed31d
    mem[1152] = 0x90bd11ef33e5c1de118c4ec976d489f539905a1c
    mem[1184] = 0x439a588b4d98781a473a384c80e019121c98a968
    mem[1216] = 0xd2db498bae0329897eb2575924fc71d52ae45d4e
    mem[1248] = 0xebcaca44831a16287679b4477a6e03c1a488f9aa
    mem[1280] = 0x702101bedfff48aaae23f48e8e78f2453ba2d1e
    sub_4251a986.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_4251a986[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_4251a986.length > idx:
        sub_4251a986[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x7b6e94c6276e96dce637ad4a5780dccb8a903b6d
    mem[1344] = 0xc0290d3f094fb5619c879b23771cd1922dcd9991
    mem[1376] = 0x947662a951fd691a24ff1c5d4b70902ef024a692
    mem[1408] = 0xdcf994c0fec7f0c0a4f9d15acb10dd740e471ad
    mem[1440] = 0x2e39510370318cef76754155b1fdff4115b1fc32
    mem[1472] = 0xcbfa9c463e64f917479186b6c76c58ce7742f999
    mem[1504] = 0x9845d19eb37b85a2d8fc8682620b36ea4fda7d1a
    mem[1536] = 0x4af87b0ad27ee2fa2acf550eaa89e0d2a75c10e5
    mem[1568] = 0x37eb08a514821df3fb18d419cf0d55049f1a3597
    mem[1600] = 0xef8dc45ad98d30dcc1e106a7c87a06eee7cba832
    mem[1632] = 0x1a05919fbbafb5440caca884e492c20a95679a5d
    mem[1664] = 0x4d543e8b0e4373e35f0c90b318edf11d25156a7a
    mem[1696] = 0x7fd9fb9e89c14b22182bd7c050fd9408e7e870d2
    mem[1728] = 0x891e6d7c9ea2f3284038affa987a771c68b0c508
    mem[1760] = 0xbcbcb5196e944d9295eb63904c99ca436ac292
    mem[1792] = 0x9768f279d70708b4487c800e3d211eec7d01700
    mem[1824] = 0x9e62c4b96d175de54764e2bc9557f04837a4a75e
    mem[1856] = 0x749400c95c8a557753a5dd4d812644465943634d
    mem[1888] = 0x5c04e3164db40b439996fb1eadeecdc6e9c20f3
    mem[1920] = 0x1e9e2edbb15d7245dc011d2f5ff0404ff70cec5c
    mem[1952] = 0x9e81e6d6e489aa994883a503fd7415ac753894c8
    mem[1984] = 0x9a743fe3df26a594886198617a6c42c044dea0d3
    mem[2016] = 0xb889131c8931b47b0e38acd122cbb618f774b1ac
    mem[2048] = 0x3f10fc7146674d58308f79a2bd4151fecbb208
    mem[2080] = 0xe32270b8ef5fc488ebb1e586da5ab755cc35c970
    mem[2112] = 0x391dbe9ba9660472cecd5ee436be17cc1c735e1c
    mem[2144] = 0xf3ee39ba622e0432d96a1302dc3a35d900dff4e5
    mem[2176] = 0xc1c1fc4f06b712862b6f0423f73f1667e39b60e5
    mem[2208] = 0xe5f0f8ac261c6539a2de6882ecad6a2542fc58c0
    mem[2240] = 0xe84dd1560f3779c88c27ac98cdb4b3d44a2f7943
    mem[2272] = 0x75793985cd7748aed99111ae03e26befcb8140c9
    mem[2304] = 0x90d237cabecffa92b6e248da0a42f189d314b918
    mem[2336] = 0x273d022a221c610aaff3ac3b3c9d2cdaac83ca1
    mem[2368] = 0x2e2d3b7cd1ea8f97be19f687375c9439a293d4fb
    mem[2400] = 0xdc6e2930d6d6dcedca53ec09cdd9ded910b35837
    mem[2432] = 0xe8d53faebdcba3443aa5e07da15116c3f7e034f8
    mem[2464] = 0xcb3c1bea4fa9d9e473923c11d1d9dd56dfed16a1
    mem[2496] = 0xbc7d52ff749a38423bc9b98625cf226201fe0964
    sub_f2fc214e.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f2fc214e[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f2fc214e.length > idx:
        sub_f2fc214e[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f2fc214e.length:
        if not sub_4251a986.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f2fc214e.length, sub_4251a986.length
        else:
            mem[2660] = address(sub_4251a986.field_0)
            idx = 2660
            s = 0
            while (32 * sub_4251a986.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4251a986[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f2fc214e.length, sub_4251a986.length, mem[2660 len 32 * sub_4251a986.length]
    else:
        mem[2628] = address(sub_f2fc214e.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f2fc214e.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f2fc214e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f2fc214e.length) + 2628] = sub_4251a986.length
        if not sub_4251a986.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f2fc214e.length, data=mem[2628 len (32 * sub_f2fc214e.length) + 32]), (32 * sub_f2fc214e.length) + 96
        else:
            mem[(32 * sub_f2fc214e.length) + 2660] = address(sub_4251a986.field_0)
            idx = (32 * sub_f2fc214e.length) + 2660
            s = 0
            while (32 * sub_f2fc214e.length) + (32 * sub_4251a986.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_4251a986[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f2fc214e.length, data=mem[2628 len (32 * sub_f2fc214e.length) + (32 * sub_4251a986.length) + 32]), (32 * sub_f2fc214e.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
