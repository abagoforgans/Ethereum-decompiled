contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 3548]




// =====================  Runtime code  =====================


array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint8 stor8;
array of address stor12;
array of uint256 stor13;
array of uint256 stor14;
array of uint256 stor15;

function _fallback() payable {
    revert
}

function sub_e9ddb625(?) payable {
    if block.timestamp >= stor3[arg1]:
        if block.timestamp <= stor4[arg1]:
            if msg.value:
                return 1
    emit LogErrorMsg(Array(len=54, data='Invalid Purchase! Check send tim', 'e and amount of ether.'));
    return 0
}

function sub_0acfb985(?) payable {
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0x10bc04e7 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_112c1e90(?) payable {
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0x3617dbba with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_7b84bfb5(?) payable {
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0xb5d88163 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_8e7a5336(?) payable {
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0xd34e3274 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_aae1288a(?) payable {
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0x6eee0e92 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_eb40c0d6(?) payable {
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0xd06f9a5e with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_d99083f3(?) payable {
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0x14f1d11b with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_32ca04a5(?) payable {
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require 0 < arg6.length
    _3 = mem[128]
    mem[(32 * arg6.length) + 128] = 0x714c61c800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg6.length) + 132] = arg1
    require ext_code.size(0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef)
    delegate 0xdfadcb5d1d760508c0137a6a03eb2f704adf96ef.0x714c61c8 with:
         gas gas_remaining - 710 wei
        args arg1, address(arg2), _3, arg7, arg3, arg4, arg5, arg9 << 248, arg10
    require delegate.return_code
    require arg6.length > 0
    if 1 == arg6.length:
        require not arg8
    stor13[arg1] = arg6.length
    if not arg6.length:
        idx = 0
        while stor13[arg1] > idx:
            uint256(stor[idx + sha3(arg1 + 13)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg6.length) + 128 > idx:
            uint256(stor[s + sha3(arg1 + 13)]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while stor13[arg1] > idx:
            uint256(stor[idx + sha3(arg1 + 13)]) = 0
            idx = idx + 1
            continue 
    stor14[arg1] = arg8
    stor15[arg1] = arg4
}

function sub_e1f0a45a(?) payable {
    require address(stor[arg1]) != msg.sender
    if block.timestamp < stor3[arg1]:
        emit LogErrorMsg(Array(len=54, data='Invalid Purchase! Check send tim', 'e and amount of ether.'));
        revert
    if block.timestamp > stor4[arg1]:
        emit LogErrorMsg(Array(len=54, data='Invalid Purchase! Check send tim', 'e and amount of ether.'));
        revert
    if not msg.value:
        emit LogErrorMsg(Array(len=54, data='Invalid Purchase! Check send tim', 'e and amount of ether.'));
        revert
    require arg2 + stor6[arg1] <= stor2[arg1]
    if stor14[arg1] > 0:
        if block.timestamp >= stor15[arg1] + stor14[arg1]:
            stor15[arg1] += stor14[arg1]
            require stor14[arg1]
            if stor13[arg1] > block.timestamp - stor3[arg1] / stor14[arg1]:
                require block.timestamp - stor3[arg1] / stor14[arg1] < stor13[arg1]
                require uint256(stor[(block.timestamp - stor3[arg1] / stor14[arg1]) + sha3(arg1 + 13)]) > 0
                require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
                delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.dividedBy(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args stor5[arg1], uint256(stor[(block.timestamp - stor3[arg1] / stor14[arg1]) + sha3(arg1 + 13)])
            else:
                require stor13[arg1] - 1 < stor13[arg1]
                require uint256(stor[stor13[arg1] + sha3(arg1 + 13) - 1]) > 0
                require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
                delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.dividedBy(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args stor5[arg1], uint256(stor[stor13[arg1] + sha3(arg1 + 13) - 1])
            require delegate.return_code
            require not delegate.return_data[0]
            stor1[arg1] = delegate.return_data[32] + 1
            emit LogTokenPriceChange(stor1[arg1], Array(len=24, data='Token Price has changed!'));
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg2, stor1[arg1]
    require delegate.return_code
    require not delegate.return_data[0]
    if stor8[arg1] > 18:
        uint256(stor[arg1 + 9][address(msg.sender)]) += arg2
        require ext_code.size(stor12[arg1])
        call stor12[arg1].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require 10^(stor8[arg1] - 18) * delegate.return_data[32] <= ext_call.return_data[0]
        require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
        delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.0x66098d4f with:
             gas gas_remaining - 710 wei
            args stor6[arg1], arg2
        require delegate.return_code
        require not delegate.return_data[0]
        stor6[arg1] = delegate.return_data[32]
        uint256(stor[arg1 + 10][address(msg.sender)]) += 10^(stor8[arg1] - 18) * delegate.return_data[32]
        require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
        delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.0xf4f3bdc1 with:
             gas gas_remaining - 710 wei
            args uint256(stor[arg1 + 10][address(stor[arg1])]), 10^(stor8[arg1] - 18) * delegate.return_data[32]
        require delegate.return_code
        uint256(stor[arg1 + 10][address(stor[arg1])]) = delegate.return_data[32]
        emit LogTokensBought((10^(stor8[arg1] - 18) * delegate.return_data[32]), msg.sender);
    else:
        require 10^(-stor8[arg1] + 18)
        uint256(stor[arg1 + 11][address(msg.sender)]) += delegate.return_data[32] % 10^(-stor8[arg1] + 18)
        uint256(stor[arg1 + 9][address(msg.sender)]) = arg2 - (delegate.return_data[32] % 10^(-stor8[arg1] + 18)) + uint256(stor[arg1 + 9][address(msg.sender)])
        require ext_code.size(stor12[arg1])
        call stor12[arg1].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require delegate.return_data[32] / 10^(-stor8[arg1] + 18) <= ext_call.return_data[0]
        require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
        delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.0x66098d4f with:
             gas gas_remaining - 710 wei
            args stor6[arg1], arg2 - (delegate.return_data[32] % 10^(-stor8[arg1] + 18))
        require delegate.return_code
        require not delegate.return_data[0]
        stor6[arg1] = delegate.return_data[32]
        uint256(stor[arg1 + 10][address(msg.sender)]) += delegate.return_data[32] / 10^(-stor8[arg1] + 18)
        require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
        delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.0xf4f3bdc1 with:
             gas gas_remaining - 710 wei
            args uint256(stor[arg1 + 10][address(stor[arg1])]), delegate.return_data[32] / 10^(-stor8[arg1] + 18)
        require delegate.return_code
        uint256(stor[arg1 + 10][address(stor[arg1])]) = delegate.return_data[32]
        emit LogTokensBought((delegate.return_data[32] / 10^(-stor8[arg1] + 18)), msg.sender);
    return 1
}



}
