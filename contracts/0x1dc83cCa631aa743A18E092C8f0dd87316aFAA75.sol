contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'storage2' / 256
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
    return code.data[494 len 6939]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct parents2;
array of struct sub_d0f95768;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function parents2(uint256 arg1) {
    require arg1 < parents2.length
    return parents2[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d0f95768(?) {
    require arg1 < sub_d0f95768.length
    return sub_d0f95768[arg1].field_0
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x71373b125aa1e3dd6d9a9cd23f42b718ef2ed5bd
    mem[128] = 0xbd4cef53a6f98ec180ddb233afd44f050b9a24b5
    mem[160] = 0x104c1903975b0e119977bf2158414ed3626c9e79
    mem[192] = 0xcf59911485e66a31cb7382015506621a3f40d0e2
    mem[224] = 0xaab40ffc8cd141b5437441ee0c2be3baf8ad70be
    mem[256] = 0x52128acc5faa509bc8eb7d14d3f92fd59e6d705d
    mem[288] = 0xf92cdc767f888c5157f02b23ae50cd959721aaba
    mem[320] = 0xa02563d998c29f67a5ecf676232833d6f49be6
    mem[352] = 0xef39223c6071e05a22dddb9137450f9cd10bf139
    mem[384] = 0x90e74092bfb094d141b3fd2d36024de167c0a9a4
    mem[416] = 0x5b3a652dcc2063bcf71a9333efbe85dac65112f8
    mem[448] = 0x36b112d6d92fe05c2218526260e7f80ed3dc0d3d
    mem[480] = 0x62bc9c7efd7fd641fbf1740bf4f6350f5bb9adfe
    mem[512] = 0xb2f535b7c216a0c8494648df3048d94b64f1c82c
    mem[544] = 0x46e1524fce27f5508e242c363bbf036920a98eeb
    mem[576] = 0x5d7152708f891696afffcc5a11dc513c4d978013
    mem[608] = 0x7ed79a235107ff8d6b710ea986496f562550b12b
    mem[640] = 0x6e53a2d2bfd07455964e245e9d866ab7678b86de
    mem[672] = 0xfb2e8fef240730e18ca7ea3e50bf9b5ab484b304
    mem[704] = 0xe514bf897ba0027478a82c5820af5b2d2f91dec3
    mem[736] = 0x4f561638155caafd1b844b752b5e309380757cce
    mem[768] = 0x77f7d9a22c394d796cc4af365bdfdb29f9c3c578
    mem[800] = 0xe1bc4af4577d42fcc1dff72a59d5854f238fd69
    mem[832] = 0x6f3144bf3f1e56422ec8d7737739a048374aaa08
    mem[864] = 0x448df1f8b4b7e3099af5295e42da6321ca437259
    mem[896] = 0x70cbe4e444ad50f726348c055f00817f276e26a3
    mem[928] = 0x172083de783590870b0b3b6caab09a3dc2f4de88
    mem[960] = 0x8a253c3551a914a508a7eeca591c5f6d3b2f1676
    mem[992] = 0xdbf3df43634bc654189543171353ee0000a421ee
    mem[1024] = 0xa329c0648769a73afac7f9381e08fb43dbea72
    mem[1056] = 0xedf73103d53e17dbb465ed0b2d4dc665db3559cb
    mem[1088] = 0xa13ce9c4cb718975192e40a3d4f5b7414f82cf2e
    mem[1120] = 0xba9b632d9fa1acfdd0afaf6890572ebdf1b7f579
    mem[1152] = 0x7f838880b02d56c92fc71641d6efecb59793ac82
    mem[1184] = 0xfa0f65f4ab459ed421e7356fd1677b6d76c98
    mem[1216] = 0xb1b92e25b39e36b1edfd88c7d1cdbe012906a17a
    mem[1248] = 0x79301f75eb2675e80fdb01338e9b773831c7f0c5
    mem[1280] = 0x3dfb3bdb11837dc9c6ba4596c29d82ebc257c3d2
    sub_d0f95768.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_d0f95768[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_d0f95768.length > idx:
        sub_d0f95768[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x4733bba44550bc37ce5a9d638615328f0181d523
    mem[1344] = 0xebf756271d181424f74d0dd65e49ca8bed56b384
    mem[1376] = 0xb6c7be06a7341930e1a9e73c06d8f8f218f688cc
    mem[1408] = 0xbe1a864d09519ac2a6d5f2e5ede7fa48efbcbb2e
    mem[1440] = 0xee4358900f7767f5857e4b894ad06ae91cb99bce
    mem[1472] = 0xa7e97a4414d9141df3583e008d0690614130199f
    mem[1504] = 0x1e48c5684cc4adab0e862cf99f7fe765425e6129
    mem[1536] = 0x12c94abb66a5fb18749f60494f13278a020ae2
    mem[1568] = 0xad8ce6ad4005661e532210d6c4f5ab93a9f61558
    mem[1600] = 0xb8fbb8dc8b287e87d102a2eddb799cc558ac25b8
    mem[1632] = 0x36f100cb55ad7d6db651a037ffa38af6e8064e61
    mem[1664] = 0xa0c7f9d054c0389da5a1da168767e2a924095dc8
    mem[1696] = 0x30f21067f485d0ca7120bf1d3fc6b7cec220be92
    mem[1728] = 0x26cdec3e99e3f0004324adfeab3fda673bec68e
    mem[1760] = 0x64ead629d47176cbbf0948c37d0bc31ee3e5f5a1
    mem[1792] = 0x336d34b7eab747db5e7adeec670eeb94d4f991a7
    mem[1824] = 0xada812365836fb438265e31ff570c5229e90ffa
    mem[1856] = 0x2c6997de39814cbbad632548dd9d8706fce0d7b4
    mem[1888] = 0x2a06056ef9debef4b5642d355af48b88ecc5d18c
    mem[1920] = 0x6c73665e8c957dc7e4ff787f8a03320ecf0e50d7
    mem[1952] = 0x6c5c14976ba985e61e489cc29b0e02a5c66dd290
    mem[1984] = 0x7a99adb5111558294a6d22a671d81319e0f60ba9
    mem[2016] = 0x4643970ecb1223b51660c6e28939422232ecdf1
    mem[2048] = 0xf782832dd3c63aa3b5dd678ad865e4414a83dd53
    mem[2080] = 0xe2382368f1df8ca41db3086133ed53eceb66510a
    mem[2112] = 0x2f07527b8ecee391ae509776a9b0467197d7ccee
    mem[2144] = 0x6442c714614abe6ae22e7e2932f36b0d9db94780
    mem[2176] = 0x18d283f2aa8415bd32ee88a192c393567dba316c
    mem[2208] = 0xfb8d0a508b3f19012ae7c3b34bfc6037d6a57f46
    mem[2240] = 0x9fcf4b8d5b04675a6a1614bd487e2160cd4a76
    mem[2272] = 0xbffba9b7ca13853cf665323e143b52de4729ffe4
    mem[2304] = 0x95b8bc78696719e2a6678f8b19318a8b2d8c0ffb
    mem[2336] = 0xfb24f041c7f05abcc7a8bc4ed73294f6edafe6b2
    mem[2368] = 0x315a4731de06e192ba3f9b92d02183044d4e3d8c
    mem[2400] = 0x58a34c37a972fe44e1784049a275ad1273ceb1
    mem[2432] = 0x472abed467e199739dd2aa41518b2ec57a425492
    mem[2464] = 0x97bd23ef93181276667bbfca0979792d9045df42
    mem[2496] = 0x820eae92feed63667ad304716474b5c87e3c8966
    parents2.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        parents2[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while parents2.length > idx:
        parents2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not parents2.length:
        if not sub_d0f95768.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, parents2.length, sub_d0f95768.length
        else:
            mem[2660] = address(sub_d0f95768.field_0)
            idx = 2660
            s = 0
            while (32 * sub_d0f95768.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d0f95768[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, parents2.length, sub_d0f95768.length, mem[2660 len 32 * sub_d0f95768.length]
    else:
        mem[2628] = address(parents2.field_0)
        idx = 2628
        s = 0
        while (32 * parents2.length) + 2628 > idx + 32:
            mem[idx + 32] = parents2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * parents2.length) + 2628] = sub_d0f95768.length
        if not sub_d0f95768.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=parents2.length, data=mem[2628 len (32 * parents2.length) + 32]), (32 * parents2.length) + 96
        else:
            mem[(32 * parents2.length) + 2660] = address(sub_d0f95768.field_0)
            idx = (32 * parents2.length) + 2660
            s = 0
            while (32 * parents2.length) + (32 * sub_d0f95768.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_d0f95768[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=parents2.length, data=mem[2628 len (32 * parents2.length) + (32 * sub_d0f95768.length) + 32]), (32 * parents2.length) + 96
    require ext_call.success
    emit 0xddf252ad: arg2, msg.sender, arg1
}



}
