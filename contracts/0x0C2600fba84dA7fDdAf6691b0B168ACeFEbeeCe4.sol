contract main {


// =======================  Init code  ======================


uint8 stor0;
array of address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 0
    mem[96] = 0x52ccdb51dc5515aa9e6539d305daa6ff8a3384ca
    mem[128] = 0xc13ec22cd64ad0c6538f59dc688af020ba5bb917
    mem[160] = 0xe48a481fb8c5ab254f4e40b42737c6723818f4cb
    mem[192] = 0xc157a873a43025259a1af1630e2f38bfca9aadd
    mem[224] = 0x144d9f3b3454258120f789685f2eab979430d360
    mem[256] = 0x309b7bde18d444ba7574f16d81871d69a920e086
    mem[288] = 0x5ea65a6b7161e7eda6b68ebb4726200fed91f2e5
    mem[320] = 0xcd37a6be0138ac59a3b30a6cac8302ff298aa17a
    mem[352] = 0x5ac36759e19260c6c9a626bf566454ef8c91a83b
    mem[384] = 0x5c2a673f7ee8506734ba72ec33397f5d54a5e718
    mem[416] = 0xfb15e295cef615ed01898de9ace7024265deef1d
    mem[448] = 0x63b461a9577cdaea028f25d059868d9abe6eddbf
    mem[480] = 0x8834f2a9df3b2f10f12cc7a39bf65559ba40fffd
    mem[512] = 0x6247a6450df75b3cb9e0f47d812d5cad0dc6289e
    mem[544] = 0xf36337c05c7704cebb690805e2e415862e4b01ba
    mem[576] = 0x2c1c97b0d8e2f6e3803831173a691b584c93d0c8
    mem[608] = 0x6f1044db6b246d9d184084ef43dc38dc2e7dfb71
    mem[640] = 0x9b67920561b3ba1c10cc300ef6e26105276c439d
    mem[672] = 0x21cbfd6a09ad94f7c9b998730e67c19c074c7721
    mem[704] = 0xfaa636dd3533f8ef106e56b7603f1b470a3f89ee
    mem[736] = 0x765f5d2c05ce18f3b77c91f796a1b42e5679935a
    mem[768] = 0x8df4797a32c5a2da505638b79f301bf96b33730d
    mem[800] = 0x6600b26e4b86a169d975a9e6659e797cececa637
    mem[832] = 0x90d25a89d934f35b5291290b66c231580ce8ad6b
    mem[864] = 0x41666464509dece90cbf1eb82e944429c777b076
    mem[896] = 0x2f563cc46202e57ee46f9f5b61d6d88ef4f2ceeb
    mem[928] = 0x387352ae7f95eaccb9db56362c90802b56fe4806
    stor1.length = 27
    s = 0
    idx = 96
    while 960 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 27
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor2[0x52ccdb51dc5515aa9e6539d305daa6ff8a3384ca] = 10290327940230100
    stor2[0xc13ec22cd64ad0c6538f59dc688af020ba5bb917] = 10432183908046000
    stor2[0xe48a481fb8c5ab254f4e40b42737c6723818f4cb] = 10480459770114900
    stor2[0xc157a873a43025259a1af1630e2f38bfca9aadd] = 10698082634022900
    stor2[0x144d9f3b3454258120f789685f2eab979430d360] = 10861362422988600
    stor2[0x309b7bde18d444ba7574f16d81871d69a920e086] = 3023196143295 * 3600
    stor2[0x5ea65a6b7161e7eda6b68ebb4726200fed91f2e5] = 11034482758621100
    stor2[0xcd37a6be0138ac59a3b30a6cac8302ff298aa17a] = 11187402758620700
    stor2[0x5ac36759e19260c6c9a626bf566454ef8c91a83b] = 11376764721839100
    stor2[0x5c2a673f7ee8506734ba72ec33397f5d54a5e718] = 11390804597701000
    stor2[0xfb15e295cef615ed01898de9ace7024265deef1d] = 11438833687356500
    stor2[0x63b461a9577cdaea028f25d059868d9abe6eddbf] = 11501149425287500
    stor2[0x8834f2a9df3b2f10f12cc7a39bf65559ba40fffd] = 11605402298850600
    stor2[0x6247a6450df75b3cb9e0f47d812d5cad0dc6289e] = 11902988505747000
    stor2[0xf36337c05c7704cebb690805e2e415862e4b01ba] = 11903661273563200
    stor2[0x2c1c97b0d8e2f6e3803831173a691b584c93d0c8] = 11903661273563200
    stor2[0x6f1044db6b246d9d184084ef43dc38dc2e7dfb71] = 12022988505746900
    stor2[0x9b67920561b3ba1c10cc300ef6e26105276c439d] = 12344304951724200
    stor2[0x21cbfd6a09ad94f7c9b998730e67c19c074c7721] = 12576321839080400
    stor2[0xfaa636dd3533f8ef106e56b7603f1b470a3f89ee] = 12796948629885200
    stor2[0x765f5d2c05ce18f3b77c91f796a1b42e5679935a] = 12914942528735500
    stor2[0x8df4797a32c5a2da505638b79f301bf96b33730d] = 13076321839080300
    stor2[0x6600b26e4b86a169d975a9e6659e797cececa637] = 13142528735632100
    stor2[0x90d25a89d934f35b5291290b66c231580ce8ad6b] = 13204597701149200
    stor2[0x41666464509dece90cbf1eb82e944429c777b076] = 13218390804597700
    stor2[0x2f563cc46202e57ee46f9f5b61d6d88ef4f2ceeb] = 13543908045979200
    stor2[0x387352ae7f95eaccb9db56362c90802b56fe4806] = 13950525503312600
    return code.data[4749 len 1594]
}



// =====================  Runtime code  =====================


const name = 'Test'

const symbol = 'Test'


uint8 stor0;
array of address members;
mapping of uint256 stor2;
mapping of uint8 stor3;

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1]
}

function sent() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function fundtransfer() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function testSendEth(uint256 arg1) payable {
    require not stor0
    require arg1 > 0
    idx = 0
    while idx < arg1:
        require idx < members.length
        require idx < members.length
        if not stor3[stor1[idx]]:
            call members[idx] with:
               value stor2[stor1[idx]] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[0] = members[idx]
        mem[32] = 3
        stor3[stor1[idx]] = 1
        idx = idx + 1
        continue 
    stor0 = 1
    return 1
}



}
