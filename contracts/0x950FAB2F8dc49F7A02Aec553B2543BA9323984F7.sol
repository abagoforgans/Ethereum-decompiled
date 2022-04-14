contract main {


// =======================  Init code  ======================


array of address stor0;
address stor1;

function _fallback() payable {
    mem[96] = 0xdb3d738d0ab94f8d10c33ce720e812c0f08417b5
    mem[128] = 0x5ae7b2e94c3a3f781c869a4316335f772670b450
    mem[160] = 0x6c37b83c5d15e103526982511a75b1c49241793a
    mem[192] = 0xa83af3c23260fe7690730fef78edf769da7f343f
    mem[224] = 0x817889ba5b8ed6b7fd082f28377667fa726961ba
    mem[256] = 0x98c72c365c9f8932833ceaa3701ed40019eb0e8e
    mem[288] = 0xd4691505be8e47db25ae2a082a8cdfed9a37dc16
    mem[320] = 0x6d15ef70d5a98f6d67ba543de56fec104bc44f94
    mem[352] = 0xb66e0209910d3ae42fac99356a06d60da9ef60d8
    mem[384] = 0x1d660c2bb6e491c8fcfcaad2c8f6b630e509916c
    mem[416] = 0xd7cb27b4adee517b093cc1e7e9ad4d97743497b5
    mem[448] = 0x273633c163d89d9eacbc08a8d1c57d41e7e0cfdd
    mem[480] = 0xadf3f5dbfb98599a446a7fb10027c677e747f1e1
    mem[512] = 0x26429e03f5a52cd30e01a521fc0fe8d0eaf04124
    mem[544] = 0x4eda5f3036932428572f44d2e104959a50f8c912
    mem[576] = 0x4948462f5b7c035912d8d955a9fbf6e23ed05bda
    mem[608] = 0x41d45be0f4df0fa2a76e79a6e00bbb63f0703107
    mem[640] = 0x5cb7b03390125424119f9120e218feb8764114ac
    mem[672] = 0x12edb73af0273970d6679ee649c67e034677324a
    mem[704] = 0x3af4dcc48e01ab3ad336457e49212825ad3d0173
    mem[736] = 0x167f9efc8b79d364ff5dcdc7688668307982133f
    mem[768] = 0x8ce6bd42cc66b73fcd991ee4d8f009336783a786
    mem[800] = 0xaa7fce1f5b08240e8634100bf20d8c27c5bc4c51
    mem[832] = 0xba86e2c7ad233b1af2a9a8a221fed3af528c9bd1
    mem[864] = 0x2c843a2c843fb81f681721513bc6b2e2937f2ab7
    mem[896] = 0x902eb7dc13a5472b6da7b4a012ed931cfdf08972
    mem[928] = 0xd90cdc536c7094900d4c0fcb1e7e4176a80dedee
    mem[960] = 0xead7bcf64bdfe9a5c549d163d6dcefacd534352b
    mem[992] = 0x34cce6c840137c3f1025714b7719e79d360ca0bc
    mem[1024] = 0x6efc205652e00eda27e9c4383be4039fd886828
    mem[1056] = 0x1680b4a72931651c8e80131ed333f97a8725c228
    mem[1088] = 0x3a59c371a978bec43b6b4d44a99e9d5cfce5aa98
    mem[1120] = 0xc3310e0fde77b8a5b35e5b9e3e8fdc1909eb67eb
    mem[1152] = 0x39a02388aeb4e21cd431b7022ac7e1155b3787f4
    mem[1184] = 0x7359869eb1abd4097d547200fdc9c21abc38f99f
    mem[1216] = 0xd7776637462ab0aa594c508528e07efdd1ea4d7a
    mem[1248] = 0xdb7331dd9ea2f1bc9e207662194be5df16c53abc
    mem[1280] = 0x3f9d31d433c8be6730427b6e30c8f19e5fc16fa0
    mem[1312] = 0xe8731cae70ef51f8f559bcbcebc957fc85217c93
    mem[1344] = 0xb844525a3956d3ab7904d8d0cdc7e04a1bfc138a
    mem[1376] = 0xcc440b82e216fddbfe764da1dca03fb181fdf07b
    mem[1408] = 0xd1b705340cdc74fa1a96444d3b36112318df2d2c
    mem[1440] = 0x7508674810dfe5c71de43f4d1d46e623f341f698
    mem[1472] = 0x1d2d2346853845501535581f37a4dd226128acd5
    mem[1504] = 0xd5a4d9d803a3efdf77be188f8ae782a76d3472cf
    mem[1536] = 0x2ef18c6ad2be003a0d04e5b0f5efea7f56ebd9b5
    mem[1568] = 0x3b23ae2faf61b8acf82e3aaebf94436a9cd9d90b
    mem[1600] = 0x39bb21e0be666babc3c4963cd54ad74ec667165a
    mem[1632] = 0x41f8ed33cd16d40a366da49db1fc8ad6eff256ce
    mem[1664] = 0x9bf26768e23c2d905b44bbe2f5cf9276fdef0977
    mem[1696] = 0xfa4d358038b860c6833c4ff955f9c44b22cb0343
    mem[1728] = 0x86c053edad0f9ac4aeafcb025b70731b962378dd
    mem[1760] = 0xc6179c90eaab683b6e456bf80d4bbe61a940e83c
    mem[1792] = 0x79d5f74ccf5253f55f3c4506a8da68eb076d1645
    mem[1824] = 0xc7a7a6949e00a75fb6b5103756498764d4bd1f8b
    mem[1856] = 0xcbd6cd7b8c1f5caa13da81d14461a5ad50ea4215
    mem[1888] = 0x8d9aeb6dff3274e2bed41e450005175def21d4fe
    mem[1920] = 0x5abf0be20234efde409f664b169edf21e2605be8
    mem[1952] = 0xe4e90d3d42d83fdb9d760f670253b9015bd5e5dd
    mem[1984] = 0x2c19dfd249ca161ad9d2d66b3ef475f85f23b834
    mem[2016] = 0x6ec65f95dfbe5ad34f7bb2577bbb077f524689c5
    mem[2048] = 0xeb1495c4faa46a6165f46ef47ac003534b5997aa
    mem[2080] = 0x25e79f2cbc4d14d00965c55074f1351e8ec9d56f
    mem[2112] = 0x973e12d34d42ba2f626ddf7476630c174c98a72e
    mem[2144] = 0xe4bb7931545f0c36d16f6952412e8175e7ea70d3
    mem[2176] = 0x47f6a4ee8349e161cc245ae390ead34bcf8dbd92
    mem[2208] = 0x91c534cd88693f1beb0a076b5fa34f1f4f2e92a4
    mem[2240] = 0xd7f57ec9c8c9fa6b7644a0f0e71a44e60822c78f
    mem[2272] = 0xf06f93125a054e0efb311e0760906d60d664cdc2
    mem[2304] = 0xda2ba7bd1fd968d2143a812e2b659d4b949b5380
    mem[2336] = 0xa1a1b65a11708f2fddbcdcb797640f220abb0a3d
    mem[2368] = 0xba4aaa4024945af5a5c1a30f1b51737904cfa7f4
    mem[2400] = 0x161c2999ef2d87ae472d351f20b937feebf1ab9c
    mem[2432] = 0x2617a8c6bd0a974dee65023f72107c5e61aebb0
    mem[2464] = 0x87c2ed6b5aeb64da58a4e681a4105a1000cbd7ae
    mem[2496] = 0xb984831d38e107f6a80d3d529284d42e6d81e13
    mem[2528] = 0x8e65a34d824e60e676e95e13970a2655b0bfd650
    mem[2560] = 0x1f1617a7b4981883e2671e45b540bdedf5ad3807
    mem[2592] = 0xcf56bad7e40877f52a89520a8cdfd5ecde61f99d
    mem[2624] = 0x97e3f4e1d4e3fa83552daa33bfb626b2b623a394
    mem[2656] = 0x858b495cd09bf8c817aedcf90020412a9cddaf4
    mem[2688] = 0x52d1fb008739855a97044c207cb4bddf3b5a874
    mem[2720] = 0x61916f6dc7ab964db5055c8fd2cd581776a25690
    mem[2752] = 0xb0f77294af1eba24984eb6c383cac27c8ffe3e64
    mem[2784] = 0x6dde9b50a942475005f58e215041edec42f195e2
    mem[2816] = 0xd4ae32fe5e6c676a5b260585bd9102828528c78b
    mem[2848] = 0x4dc7a3fb15c5dfbbbd4791ca56852a10cba4d9fa
    mem[2880] = 0x1193931835a9d7bab689ada4c5b2a8c14492d397
    mem[2912] = 0xdcd84bc7fa93e0a81607288f49df11669d5636bd
    mem[2944] = 0x32bc47703703d3f2cf36b8b37cd9695e8e732dcf
    mem[2976] = 0xd099c24a469066ebcac9c11119133fe044ab5a91
    mem[3008] = 0x154e88c5dc2a69dbc6f8e1cc52c613b88f324ccd
    mem[3040] = 0x5468f59181b044de377ed30715765a682af6a621
    mem[3072] = 0x53e9cd54e1fca1be1f4da4e7888ddd28d21c2a44
    mem[3104] = 0xbdb619d802a645262b7ec75dc893394c1a85648f
    mem[3136] = 0xc9884a81d9f71bd8b1942d12958a580810577e6b
    mem[3168] = 0xb475f98a0c8a30139571c04c94cd002c8c558c4
    mem[3200] = 0x6af4423843faaa62eca1a97977af912ed1ab63e
    mem[3232] = 0x60eef5c5139c3d485b7d2ab1a237852c4359cc5b
    stor0.length = 99
    s = 0
    idx = 96
    while 3264 > idx:
        stor0[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 99
    while stor0.length > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    stor1 = 0x98d750cd8586b71b848b1a89a8df8f1b50e83421
    require not msg.value
    return code.data[2912 len 673]
}



// =====================  Runtime code  =====================


const depositFunds = 1


array of address addresses;
address owner;

function owner() {
    return owner
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return addresses[arg1]
}

function _fallback() payable {
  stop
}

function withdraw() {
    if owner == msg.sender:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function sub_53efaa1f(?) {
    idx = 0
    while idx < addresses.length:
        mem[0] = 0
        call addresses[idx] with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        idx = idx + 1
        continue 
}



}
