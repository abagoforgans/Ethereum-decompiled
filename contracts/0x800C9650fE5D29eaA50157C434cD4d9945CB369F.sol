contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage17' / 256
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
    return code.data[494 len 6763]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_3a7a2a9c;
array of struct sub_905c7df6;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_3a7a2a9c(?) {
    require arg1 < sub_3a7a2a9c.length
    return sub_3a7a2a9c[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_905c7df6(?) {
    require arg1 < sub_905c7df6.length
    return sub_905c7df6[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0x581769bc7e9ba21d4acd432ae2c012d07f891173
    mem[128] = 0x4c055b4167804e9517927ebfa309c58f6b688abd
    mem[160] = 0xdc022c766d6522d96cff5afff9355f9887168fda
    mem[192] = 0x10db60860fa302bb0cbeec10e3d54cc0d6ae4740
    mem[224] = 0x5fba8819b36c2574db83314adce09c2caa03c4d0
    mem[256] = 0xc301f756b21aa22aa4ac83f225ad997a65072112
    mem[288] = 0xafabbf4f328e4e7cb99d3feefce0cdcdc6fd9db5
    mem[320] = 0x97bc28f05e5d25c1935ea31694ae41ccf354f78a
    mem[352] = 0x9a295f39d7dc2f6a6432246ec26fac4e98fa51d4
    mem[384] = 0x3e23716bbe41f2d33f6939e4c9cef1fcc2c23bf1
    mem[416] = 0xc8c11367638c69d2b007612d1bfccc3655f5b9
    mem[448] = 0xfc531da33860727e988c05c65472b343cd0acb73
    mem[480] = 0xdfd26c50965731d78a052e41a9d32652bac8da83
    mem[512] = 0xa888ed8b73d2c5b3d51b43247d3b0cf2331422b9
    mem[544] = 0x6b128af01a04c83cdc145fcdc1b3a14a640311b8
    mem[576] = 0x2f8061e70c392e7e60fd2432213c83f8b0e56d78
    mem[608] = 0x90c8483aef0780ef3b89eb3441da7ce6ef4cdbb6
    mem[640] = 0xe2b3fb5075977eaed2a8b215dbeddb11739c5f72
    mem[672] = 0xa756cebc705c2c8b52517e821b2d3782c58b7b49
    mem[704] = 0x5b251d2c7cfb3adb463ac128e195868e4c0bd792
    mem[736] = 0x7182662f41a391732dbaa3ef7f625e8959724bd1
    mem[768] = 0xdc3a0d9f66d3ce3a31a9cf242444e7b9b90bcb31
    mem[800] = 0x5028da133bb723037de754fb0e680073f94b2585
    mem[832] = 0xe2b8d7df55b94f4e1774dc9c96f7a4a676de8681
    mem[864] = 0x911fdc6ae267cb649f0e9f0b175bc8367fa96684
    mem[896] = 0xa0bc573e79c2ce0dffcca9debb75a842ebae7359
    mem[928] = 0xd09ef231f212dcf9059d5ad3a33213b936d36925
    mem[960] = 0x6c984bb4acb20fcc3d4938a4d1d50bfc37776d
    mem[992] = 0xe10c37aaa000d6fae7d2dea0a57f426845e49c03
    mem[1024] = 0x7e69a4e8f7cb8f6bdc88fbca3ec12ca4d0df7fe2
    mem[1056] = 0xfa9f6ed82a2fc68b8b8031992bf1e2a0b80109f9
    mem[1088] = 0x312b3d4aaeb468959d7204c54e30c3fbd73ba134
    mem[1120] = 0xd10a1c831e7ea79c6e390c66e3100988d70c6142
    mem[1152] = 0xc8ddf6cb3db351481ed574deefc2713a3e0754
    mem[1184] = 0xde4c3c055ae664527f830af3d1b6498eefdb8b3a
    mem[1216] = 0x707346c371dbc411d3fcafe5645dcfeb98161396
    mem[1248] = 0x231f6df00b975309d8bfe1fc452058a654b5a9a
    mem[1280] = 0x74dc98b4907e3e2d1a9a1f64be645568f6b24775
    sub_905c7df6.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_905c7df6[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_905c7df6.length > idx:
        sub_905c7df6[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0xb8529d24a448aebefe854d2002a841624d36bd9c
    mem[1344] = 0x6480a17039c9b1bb80d2ae8bcf562190958e529b
    mem[1376] = 0xf0aef976e14e6d4b4bb3f6cb25d571c2127faca9
    mem[1408] = 0xb1b0e1eb852bf646022f0f3665fadf1174aeddfc
    mem[1440] = 0x72d47cf366c0c55234bf86e42998b279b8780b6a
    mem[1472] = 0x1392f89be1e042214b77390e5ebff17cc9b82d5a
    mem[1504] = 0x5d0de0da4a5ae7d6e2872b17147f6408c260e88b
    mem[1536] = 0xca8e6ecf9680b4fc5e84cbc91ca2caaf1f0ffc38
    mem[1568] = 0xae17e19acbad619237b6a2f67fe3688d67579ea1
    mem[1600] = 0x53e75429734533b6adae199f247760a43c7a12c5
    mem[1632] = 0x32b1b57c64e6334a935a250bd6b5aba2c94dde
    mem[1664] = 0xe484839114a536624af3c65a3ed44dbeb023af4e
    mem[1696] = 0x44c95ce7822a862b1b4d14c709f9be5167a1838d
    mem[1728] = 0xb57448334231f58f46fc0368a84d485d2bd8d283
    mem[1760] = 0x8e6fb365bdaf3d6f6dc97c6b623026444897044d
    mem[1792] = 0x26067e778b6446655e4fccbc882d99c0ac9d8a44
    mem[1824] = 0x448915eff50d9f02312c46ee52b1c18de1dd9f9a
    mem[1856] = 0xbef066a48da35672141098bc9eebcc3dd1645205
    mem[1888] = 0x31b31c10efa799adf1a9bb4fb36d03fa7388dacb
    mem[1920] = 0x5e312bf353ff4cc28f9c4f9157462a0f72237092
    mem[1952] = 0x43808d5a5cc952c530ff9d0499fa0bfd8ff553bf
    mem[1984] = 0x481795eec6d7819b208e2417587e77d2701f6a3d
    mem[2016] = 0xaea7aed243811f78fb73e26b1d5115f53b1e98d9
    mem[2048] = 0x96c602bac924166929544a29ddf81e9d2375994d
    mem[2080] = 0xf92f485ac6c844d58fd83a7e29685d38b572f604
    mem[2112] = 0xe20cf3f78a0d0a5abcdcbe6350a94ed3ec58adc1
    mem[2144] = 0x749a9ae60870b2c7ebc38a663559ddc5e713bed3
    mem[2176] = 0x88d285c5df1439ac494d82775927f5349fad0
    mem[2208] = 0x6a60c0d9d1cf21b73f071ae15ffe6746d02ab40
    mem[2240] = 0x8ed0dc0917be4d0c66ca08453816ad676f2d9c2c
    mem[2272] = 0x7a441de7ac626ce0fc9a05efdaa684b6ad647506
    mem[2304] = 0x18c90be3f1ebcd035c9701ec7924490f9be1f486
    mem[2336] = 0x127cb3459109316badd8d29bea7a05a83ba51466
    mem[2368] = 0xba4dfde57f273a6d2a466068b5ed7652797b1f
    mem[2400] = 0x8d15b8e36b08fd6cefdbf934c3f900852cdf5062
    mem[2432] = 0xde1f1775dfbaece00da57d903d29d0273dbd2a19
    mem[2464] = 0x5bc6d19d5feb961ddb58921c17c4736abca06468
    mem[2496] = 0xa1e1a453a194659944ac2f6d122d27b4f139750c
    sub_3a7a2a9c.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_3a7a2a9c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_3a7a2a9c.length > idx:
        sub_3a7a2a9c[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_3a7a2a9c.length:
        if not sub_905c7df6.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3a7a2a9c.length, sub_905c7df6.length
        else:
            mem[2660] = address(sub_905c7df6.field_0)
            idx = 2660
            s = 0
            while (32 * sub_905c7df6.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_905c7df6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_3a7a2a9c.length, sub_905c7df6.length, mem[2660 len 32 * sub_905c7df6.length]
    else:
        mem[2628] = address(sub_3a7a2a9c.field_0)
        idx = 2628
        s = 0
        while (32 * sub_3a7a2a9c.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_3a7a2a9c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_3a7a2a9c.length) + 2628] = sub_905c7df6.length
        if not sub_905c7df6.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3a7a2a9c.length, data=mem[2628 len (32 * sub_3a7a2a9c.length) + 32]), (32 * sub_3a7a2a9c.length) + 96
        else:
            mem[(32 * sub_3a7a2a9c.length) + 2660] = address(sub_905c7df6.field_0)
            idx = (32 * sub_3a7a2a9c.length) + 2660
            s = 0
            while (32 * sub_3a7a2a9c.length) + (32 * sub_905c7df6.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_905c7df6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_3a7a2a9c.length, data=mem[2628 len (32 * sub_3a7a2a9c.length) + (32 * sub_905c7df6.length) + 32]), (32 * sub_3a7a2a9c.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
