contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_2929be8f;

function sub_2929be8f(?) {
    require arg1 < sub_2929be8f.length
    return sub_2929be8f[arg1].field_0, sub_2929be8f[arg1].field_256
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    require msg.sender == owner
    emit FundsReceived(msg.value);
}

function sub_b39186ee(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_2929be8f.length:
        call sub_2929be8f[idx].field_256 with:
           value sub_2929be8f[idx].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < sub_2929be8f.length
        mem[0] = 1
        mem[96] = sub_2929be8f[idx].field_256
        mem[128] = sub_2929be8f[idx].field_0
        emit PaymentSent(sub_2929be8f[idx].field_256, sub_2929be8f[idx].field_0);
        idx = idx + 1
        continue 
}

function send2() {
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 168 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x9cb114f9db70c9f93cca6df4f6da9493e7788538
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 16 * 10^17
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xd45addf6709f0d96482d8d7d7b00e392d3a896a2
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 157662984 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x4a1559933d70df8a9bdecea1d3cb9a8ca51ec7ee
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 154042552 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x89d675f0a614ea89ae055535589e176abe3a4327
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 152340424 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xa26cad9333d367ddd8ab7abbfc478bd9e48c25a8
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 1488 * 10^15
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xfdea5d259062a06532de6cdbdbf10c0561eeaae9
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 4 * 10^14 * 3600
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x6c38c368eca4ceb338c3ea92de16f65b8e41dc4e
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 132 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x5a26d29fd28a0f43aed44436c5bd6b789d4ae451
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 128 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x97f0697776d1d4272aca8a19fa515f21aa3ec0b3
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 122042552 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x134c645b3a62f6a4663dde486cbbc79543558a64
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 12 * 10^17
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x5823209470c7b29adf353342226d5972fd5ce231
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 12 * 10^17
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x7f04c3ddbe3f176f0ed47ad7ccb96ffbd3be0dcb
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 114345448 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xc5ad90e43c79915b4964fc15c378ee8d1d69ef33
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 3 * 10^14 * 24 * 3600
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x7083773c9c4d9c568b86b1cd95894728368e515
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 106 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x4ad0fd387512b423bd135765f8aa7541c2bdc982
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 102127664 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x9070c5d93adb58b8cc0b281051710cb67a40c72b
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 97528504 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x22746db5719f584b4593f87138a4e4f99f22f74d
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 96 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xb8bb7b242a5843ab097dc7fb02e6622f5f52585f
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 952 * 10^15
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x30c3545c8df984704c85a06312aefa4d415a2468
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 94042552 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x3185f3fcf683d94e410747a7a866c10db77ed054
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 94042552 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xc525dd3edfc2e4893c4d1cbb16c797e89027bdd6
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 92 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xdd8493d0c3bc4a73af2948d600864759915886
    sub_2929be8f[sub_2929be8f.length].field_408 = 0
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 90704 * 10^13
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xdae48d7b5c73a95f74caae08f7f92d3b7927f449
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 89173104 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xfd08026d2a0c954f8273f9f9e2622e8a6475b48
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 8816068 * 10^11
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xf4f035c04230c57ed6f4537ee3e5d98425851ba0
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 8792 * 10^14
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x7b7e62e3904ffea2f5ae0808235e2c06cc12ce0c
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 87888 * 10^13
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x325edf124780394b02c912a1b5e68d38cbfce31e
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 87064864 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xea7b92e2ffc6167683a0ccb55ad3a4a14dfe3477
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 84 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xf85f4833dee5c83ea0099d14028a05cd108383d6
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 8292 * 10^14
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x5a469aca2c6a42d0715675c5d7e99cf62261952a
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 228118200 * 10^6 * 24 * 3600
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x318c6aca46990cd9d12416d789bc3d6d13fa9d3b
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 8 * 10^17
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x31a7437381355855fb9351cfe7865f859e81f387
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 8 * 10^17
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x7e6bdd5c78c367b8967ea0f53f0b16c9f7751657
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 68042552 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x58ba1168e8a9173497138bd7d24b2e47c49a0fdd
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 18609 * 10^10 * 24 * 3600
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x21948ae53080bf76801da7f6bea263c623c463a8
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 656 * 10^15
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xce24ae512fe43b3d9b620a556f840800bdbf5de2
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 64 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xacc5b7c46965b18130ece05b1aac1568bcc413ae
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 64 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x27a6fbe8a751db842682e32caf85b002d479cf45
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 64 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x79426ae491d98cbcba35ec3c201d398aa855f96f
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 6156248 * 10^11
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xd7e5b4228c9a6c0133dd18001e59373554f7aa8d
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 165019 * 10^9 * 3600
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xe12e1e591a5961770671be6595c7acd32a2cd5f7
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 56272336 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x816e1ba3004943b3c14a5525552113f3f2cd6974
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 56059568 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x135789c3f8aa3546c0a4ae0e00a4b423069ae6d9
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 54488 * 10^13
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xc9aae967d07aae67b24c3e3aeb73571fd363eb26
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 50434016 * 10^10
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x58a1df9f525a38c83c6f103e809a1cc4a41fe245
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 48032 * 10^13
    sub_2929be8f[sub_2929be8f.length].field_256 = 0xc00940e4f9238ebcf73bcb6adfeda86075ac6e28
    sub_2929be8f.length++
    sub_2929be8f[sub_2929be8f.length].field_0 = 48 * 10^16
    sub_2929be8f[sub_2929be8f.length].field_256 = 0x61884e9082cdd044989e49b3bb5a9a15ed33a6ad
}



}
