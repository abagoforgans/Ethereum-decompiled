contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[7206 len 20]
    stor1 = code.data[7238 len 20]
    return code.data[112 len 7082]
}



// =====================  Runtime code  =====================


address sub_c23aa65aAddress;
address adminAddress;
array of struct sub_1761e9f3;

function sub_1761e9f3(?) {
    return sub_1761e9f3[arg1].field_2816
}

function sub_769f7a23(?) {
    return sub_1761e9f3[arg1].field_2560
}

function sub_c0ecb924(?) {
    return bool(sub_1761e9f3[arg1].field_2560)
}

function sub_c23aa65a(?) {
    return sub_c23aa65aAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require adminAddress == msg.sender
    if arg1:
        adminAddress = arg1
}

function sub_cca14931(?) {
    require adminAddress == msg.sender
    if arg1:
        sub_c23aa65aAddress = arg1
}

function sub_32a8c57f(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_1761e9f3[arg1].field_2560 = arg2
    emit 0x87157c8a: arg2, arg1
}

function sub_843fbacb(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_1761e9f3[arg1].field_2816 = arg2
    emit 0xcadec34b: arg2, arg1
}

function sub_523b93df(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args 2
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_4a45855e(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x7f562d88 with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_193768b1(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args (sha3(arg1, 5) + 1)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_60688847(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args (sha3(arg1, 5) + 7)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_628cf0a8(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xcce51144 with:
         gas gas_remaining - 710 wei
        args (sha3(arg1, 5) + 4)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_af2eeb80(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args (sha3(arg1, 5) + 4)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_48447c2c(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 4, arg2
    require delegate.return_code
    emit 0x7bcf2946: arg2, arg1
}

function sub_5193696a(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x6bebc35a with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 1, arg2
    require delegate.return_code
    emit 0xe0f3f39f: arg2, arg1
}

function sub_54425052(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x6bebc35a with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 7, arg2
    require delegate.return_code
    emit 0xfebc55a1: arg2, arg1
}

function sub_ae6d1382(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 7, arg2
    require delegate.return_code
    emit 0xc91f9da3: arg2, arg1
}

function sub_e21b09ff(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 1, arg2
    require delegate.return_code
    emit 0x5a85545f: arg2, arg1
}

function sub_fe291411(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x6bebc35a with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 4, arg2
    require delegate.return_code
    emit 0x673c7d5f: arg2, arg1
}

function sub_ef4cd6ea(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_1761e9f3[arg1].field_2560 = arg2
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 1, arg2
    require delegate.return_code
    emit 0x87157c8a: arg2, arg1
}

function acceptProposal(uint256 arg1) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 4, sub_1761e9f3[arg1].field_2560
    require delegate.return_code
    sub_1761e9f3[arg1].field_2560 = 0
    emit 0xb8f2f929: sub_1761e9f3[arg1].field_2560, arg1
}

function rejectProposal(uint256 arg1) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 7, sub_1761e9f3[arg1].field_2560
    require delegate.return_code
    sub_1761e9f3[arg1].field_2560 = 0
    emit 0x796ba3ea: sub_1761e9f3[arg1].field_2560, arg1
}

function getIds(uint256 arg1) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[64] = 2144
    mem[1120] = 0
    mem[1152 len 992] = 0
    idx = 0
    s = 0
    while idx < 32:
        if arg1:
            require arg1
            require 32 * arg1 / arg1 == 32
        require idx + (32 * arg1) >= 32 * arg1
        require idx + (32 * arg1) >= idx
        mem[2176] = 0
        mem[2148] = 2
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
             gas gas_remaining - 710 wei
            args 2
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        if idx + (32 * arg1) >= delegate.return_data[0]:
            idx = 0
            while idx < 1024:
                mem[idx + 2144] = mem[idx + 1120]
                idx = idx + 32
                continue 
            return memory
              from 2144
               len 1024
        require idx + (32 * arg1) < stor2.length
        mem[0] = 2
        require idx < 32
        mem[(32 * idx) + 1120] = stor[idx + (32 * arg1) + ('name', 'stor2', 2)]
        idx = idx + 1
        s = idx + (32 * arg1)
        continue 
    return memory
      from 1120
       len 1024
}

function sub_747879ad(?) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[64] = 2144
    mem[1120] = 0
    mem[1152 len 992] = 0
    mem[0] = arg1
    mem[32] = 5
    idx = 0
    s = 0
    while idx < 32:
        if arg2:
            require arg2
            require 32 * arg2 / arg2 == 32
        require idx + (32 * arg2) >= 32 * arg2
        require idx + (32 * arg2) >= idx
        mem[2176] = 0
        mem[2148] = sha3(arg1, 5) + 7
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
             gas gas_remaining - 710 wei
            args (sha3(arg1, 5) + 7)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        if idx + (32 * arg2) >= delegate.return_data[0]:
            idx = 0
            while idx < 1024:
                mem[idx + 2144] = mem[idx + 1120]
                idx = idx + 32
                continue 
            return memory
              from 2144
               len 1024
        mem[2148] = sha3(arg1, 5) + 7
        mem[2180] = idx + (32 * arg2)
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xc25ce2c1 with:
             gas gas_remaining - 710 wei
            args sha3(arg1, 5) + 7, idx + (32 * arg2)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        require idx < 32
        mem[(32 * idx) + 1120] = delegate.return_data[0]
        idx = idx + 1
        s = idx + (32 * arg2)
        continue 
    return memory
      from 1120
       len 1024
}

function sub_ae16a720(?) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[64] = 2144
    mem[1120] = 0
    mem[1152 len 992] = 0
    mem[0] = arg1
    mem[32] = 5
    idx = 0
    s = 0
    while idx < 32:
        if arg2:
            require arg2
            require 32 * arg2 / arg2 == 32
        require idx + (32 * arg2) >= 32 * arg2
        require idx + (32 * arg2) >= idx
        mem[2176] = 0
        mem[2148] = sha3(arg1, 5) + 1
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
             gas gas_remaining - 710 wei
            args (sha3(arg1, 5) + 1)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        if idx + (32 * arg2) >= delegate.return_data[0]:
            idx = 0
            while idx < 1024:
                mem[idx + 2144] = mem[idx + 1120]
                idx = idx + 32
                continue 
            return memory
              from 2144
               len 1024
        mem[2148] = sha3(arg1, 5) + 1
        mem[2180] = idx + (32 * arg2)
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xc25ce2c1 with:
             gas gas_remaining - 710 wei
            args sha3(arg1, 5) + 1, idx + (32 * arg2)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        require idx < 32
        mem[(32 * idx) + 1120] = delegate.return_data[0]
        idx = idx + 1
        s = idx + (32 * arg2)
        continue 
    return memory
      from 1120
       len 1024
}

function sub_f5ae40b7(?) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[64] = 2144
    mem[1120] = 0
    mem[1152 len 992] = 0
    mem[0] = arg1
    mem[32] = 5
    idx = 0
    s = 0
    while idx < 32:
        if arg2:
            require arg2
            require 32 * arg2 / arg2 == 32
        require idx + (32 * arg2) >= 32 * arg2
        require idx + (32 * arg2) >= idx
        mem[2176] = 0
        mem[2148] = sha3(arg1, 5) + 4
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
             gas gas_remaining - 710 wei
            args (sha3(arg1, 5) + 4)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        if idx + (32 * arg2) >= delegate.return_data[0]:
            idx = 0
            while idx < 1024:
                mem[idx + 2144] = mem[idx + 1120]
                idx = idx + 32
                continue 
            return memory
              from 2144
               len 1024
        mem[2148] = sha3(arg1, 5) + 4
        mem[2180] = idx + (32 * arg2)
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xc25ce2c1 with:
             gas gas_remaining - 710 wei
            args sha3(arg1, 5) + 4, idx + (32 * arg2)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        require idx < 32
        mem[(32 * idx) + 1120] = delegate.return_data[0]
        idx = idx + 1
        s = idx + (32 * arg2)
        continue 
    return memory
      from 1120
       len 1024
}

function sub_48aeb881(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args 2
    require delegate.return_code
    require not sub_1761e9f3[delegate.return_data[0] + 1].field_0
    sub_1761e9f3[delegate.return_data[0] + 1].field_0 = delegate.return_data[0] + 1
    sub_1761e9f3[delegate.return_data[0] + 1].field_2560 = 0
    sub_1761e9f3[delegate.return_data[0] + 1].field_256 = 0
    idx = 0
    while sub_1761e9f3[delegate.return_data[0] + 1].field_256 > idx:
        sub_1761e9f3[delegate.return_data[0] + 1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_1761e9f3[delegate.return_data[0] + 1].field_1024 = 0
    idx = 0
    while sub_1761e9f3[delegate.return_data[0] + 1].field_1024 > idx:
        sub_1761e9f3[delegate.return_data[0] + 1][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    sub_1761e9f3[delegate.return_data[0] + 1].field_1792 = 256
    s = 0
    idx = 288
    while 8480 > idx:
        sub_1761e9f3[delegate.return_data[0] + 1][s + 7].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 256
    while sub_1761e9f3[delegate.return_data[0] + 1].field_1792 > idx:
        sub_1761e9f3[delegate.return_data[0] + 1][idx + 7].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args 2, delegate.return_data[0] + 1
    require delegate.return_code
    emit 0x972b4f99: delegate.return_data[0] + 1
    return (delegate.return_data[0] + 1)
}



}
