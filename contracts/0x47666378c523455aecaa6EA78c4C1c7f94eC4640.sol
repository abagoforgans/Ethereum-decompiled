contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage96' / 256
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
    return code.data[494 len 6852]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_f03a3fd0;
array of struct sub_674c9b67;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_674c9b67(?) {
    require arg1 < sub_674c9b67.length
    return sub_674c9b67[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_f03a3fd0(?) {
    require arg1 < sub_f03a3fd0.length
    return sub_f03a3fd0[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x218ebbd2b44f706dc855821459aaffbe5f33f121
    mem[128] = 0x7fd8cdbf7cde0345088e1cbb8595f4b32e21e99c
    mem[160] = 0x642848edf9dabd77fc3d82e58413c49a59fac8f8
    mem[192] = 0x4de46598fc0052b96bff5ce26ce4b50c446971fe
    mem[224] = 0x2d64017f187ecdd4efe8ee63b107747b347ee0d3
    mem[256] = 0x33c10e9f028ff8f67f394bc97843cbf4dc27dd3e
    mem[288] = 0xacb9d1d9c287e8b9fc432c52918979a4d1fa5520
    mem[320] = 0x7aa573334d5a861b30a84ec4c2549779fe7aaefe
    mem[352] = 0x778d1a037c7c306c82611f5c6472ab421b805507
    mem[384] = 0xc701c1b7059dfba9634e66103ab2835cb980ef2f
    mem[416] = 0xd8cbb3c7c42a4413aa2bf73e0dbe1f096b52a0c5
    mem[448] = 0x4052540435deb54352c92bbd4770c3e8f692343
    mem[480] = 0xb348a2d9d392db860324536a5a40e9b18df4a712
    mem[512] = 0xa727d63644ef1f74f8443162ee32844de3960
    mem[544] = 0x1f7c31598bdb7f32a864f917a6ef0dce9981ed12
    mem[576] = 0x4ed0fa6ae36e606a4c6665b436027a3d8056c366
    mem[608] = 0x20370a22e8a7d0101719c130bc650fabd80584d3
    mem[640] = 0x39b87cab56a2d7d2ab0c5cc8224242346bfa2d
    mem[672] = 0xbbfe2d3d7fbaa2bbeb9b7cfd2b19dadd2f2fba4f
    mem[704] = 0xce860e1771ef8c14960f662fdc8075353a15c403
    mem[736] = 0x71c12b0f29aeceea2e2e610566b0978674bf2a36
    mem[768] = 0x1d3e13daa8ae810a535d69b2bbc0c333b287ea99
    mem[800] = 0xb44047ab672308a4daa141e260d40a6a2f91bfb9
    mem[832] = 0x390c705e607d3f3cc6714d5d150c608126930547
    mem[864] = 0x8d9ea1e49d9d1cc3dad20294b468de226e5912a
    mem[896] = 0xed1a5c43c574d4e934299b24f1472cdc9fd6f010
    mem[928] = 0xd80172a21bd38f0e0f7458293e336a9609291f8
    mem[960] = 0x9c59a67fa39081b87de6604218bc9790ef178d08
    mem[992] = 0x19a811a0659f02deea4c71c189f502145e1532aa
    mem[1024] = 0xb11060d390a5fddfd25d4261e64790cea5fb2be0
    mem[1056] = 0x2e2c59a3824cf664ae09db7dcd4f79fe03de9772
    mem[1088] = 0x11dd34d7a815077104138af351e4f9caf73d623b
    mem[1120] = 0xc7fa180df8a3a5f673bf17d4d77c6b3fccbf9f98
    mem[1152] = 0xef1bacb7207827c5af06a5a303ffac1650e34020
    mem[1184] = 0x2cb76632bc6571759a3b26b81fdaebb2be6ebf53
    mem[1216] = 0x3b6a8b92fefe83f211df42b66b115ff9aba1ba6d
    mem[1248] = 0x8a9af302a34df1cbb2c2a02bb78f06e39a39f956
    mem[1280] = 0x2983d9a63bf4d53dfd2fb2ba687ae53abaa2de60
    sub_674c9b67.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_674c9b67[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_674c9b67.length > idx:
        sub_674c9b67[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x5e3c9fa0d74939cd65a6732df31763e84f155b2
    mem[1344] = 0xc2e1398f676aab80a2540a1953dda4be025a4b16
    mem[1376] = 0xbc86c58edbaf281abb4de50f3ebc1c2e94c631b9
    mem[1408] = 0x746fe39700ba5511730e1261a0cbb6688962fefa
    mem[1440] = 0xf9b17aa0025bb17e4e1eceb89dbdff9d6ef3283c
    mem[1472] = 0xedd5c28c3a26853e92f6ebcb3b3cd7719a034df4
    mem[1504] = 0x86d959dd6a4a3a1ad9b6f8d86caac48a61d22501
    mem[1536] = 0xd7be5e5fa02c1ea8d3b3248284e349a7032e9e0a
    mem[1568] = 0xa394a24c94937bc145b55f0af1c8297791a504d9
    mem[1600] = 0xff72af67c5e0b0296ada1684807c17fc095345a4
    mem[1632] = 0xd817e2737b8ca7f9f4d28d241e2c8b42a53959b2
    mem[1664] = 0xde2ce6f25cf4baccba71fcf7159d7980973e97b1
    mem[1696] = 0xf973d4a7f850b932db68ec823c68950ebc763e96
    mem[1728] = 0x5872302701c80cef0ddda97d74c1e6892de765
    mem[1760] = 0x9a3ddc0abc7c6edefbc26071e0f8312078216ca4
    mem[1792] = 0x2ded45a5c675ff8e59abe399091d6e3587a3c077
    mem[1824] = 0xd07804a57d11d3463860fab9a25c0b7cf7567fab
    mem[1856] = 0x2e730338cc9234f4aa28cd34492af283ce2ea9
    mem[1888] = 0xe7bf52133899291774dafb8b6459ffbf8fde0d37
    mem[1920] = 0xde1c6dbe95d96df3ffec7c97775b24ef9323b293
    mem[1952] = 0xe906e43d7bcef772a30178753e87fb3855424bb7
    mem[1984] = 0x6638696dafdc79065b865433cf144556426ed9d5
    mem[2016] = 0x199ccc459cb78313c83f3cb58a817ffc7c254272
    mem[2048] = 0xded3853d98e3dc5c68074a447679cf8e314b91
    mem[2080] = 0xf3bb58534e356448b0444b9a4fced57cdab4875e
    mem[2112] = 0xdebb3a4c1b757c20975f49b25d32663c33e50399
    mem[2144] = 0x3fec0fc3db5f0cec5bd50eab8e43958d54970432
    mem[2176] = 0x91b5042ed487d28fb9697fe78aa4ebd97cce46c6
    mem[2208] = 0x6900a6de37a35d046155e56509a1c44593c7c12a
    mem[2240] = 0xb50f3e9d08ff26d6aefa6e22037b743c02752fed
    mem[2272] = 0x762618b3b2a651123b4f2c0f8bf9b57c29ab274
    mem[2304] = 0x4f45d7288eff7a292007458a13a2ee4fd9f2d048
    mem[2336] = 0x49d0d71625db97bbbeb159339e77f64a4b6b1890
    mem[2368] = 0xa7168a95afac5b5c9c4939304b6c86be9941507f
    mem[2400] = 0x68da7759bf4dfa7ecb36f78069dff8f62e71eba
    mem[2432] = 0x8012155662d682000148b85658a68e93f9342932
    mem[2464] = 0x88d27a0b3f3885bf22fc9934b9ea70cd6c1f109d
    mem[2496] = 0x6d2b6a4ee3fb93705042a76c48eb3df74266b392
    sub_f03a3fd0.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_f03a3fd0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_f03a3fd0.length > idx:
        sub_f03a3fd0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_f03a3fd0.length:
        if not sub_674c9b67.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f03a3fd0.length, sub_674c9b67.length
        else:
            mem[2660] = address(sub_674c9b67.field_0)
            idx = 2660
            s = 0
            while (32 * sub_674c9b67.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_674c9b67[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_f03a3fd0.length, sub_674c9b67.length, mem[2660 len 32 * sub_674c9b67.length]
    else:
        mem[2628] = address(sub_f03a3fd0.field_0)
        idx = 2628
        s = 0
        while (32 * sub_f03a3fd0.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_f03a3fd0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_f03a3fd0.length) + 2628] = sub_674c9b67.length
        if not sub_674c9b67.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f03a3fd0.length, data=mem[2628 len (32 * sub_f03a3fd0.length) + 32]), (32 * sub_f03a3fd0.length) + 96
        else:
            mem[(32 * sub_f03a3fd0.length) + 2660] = address(sub_674c9b67.field_0)
            idx = (32 * sub_f03a3fd0.length) + 2660
            s = 0
            while (32 * sub_f03a3fd0.length) + (32 * sub_674c9b67.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_674c9b67[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_f03a3fd0.length, data=mem[2628 len (32 * sub_f03a3fd0.length) + (32 * sub_674c9b67.length) + 32]), (32 * sub_f03a3fd0.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
