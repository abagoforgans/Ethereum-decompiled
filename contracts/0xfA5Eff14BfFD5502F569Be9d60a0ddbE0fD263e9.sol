contract main {




// =====================  Runtime code  =====================


const gasEpoch = 347 * 10^10


mapping of uint8 stor0;
mapping of uint256 nonceOf;
uint256 sub_d8fe9250;
mapping of uint256 sub_99d5bae1;
uint256 gasPrice;
mapping of uint8 stor5;
address sub_5afa47c2Address;
address sub_773fb7fdAddress;
address auctionAddress;
address ensAddress;
address xrtAddress;

function xrt() payable {
    return xrtAddress
}

function ens() payable {
    return ensAddress
}

function sub_5afa47c2(?) payable {
    return sub_5afa47c2Address
}

function sub_773fb7fd(?) payable {
    return sub_773fb7fdAddress
}

function auction() payable {
    return auctionAddress
}

function sub_99d5bae1(?) payable {
    require calldata.size - 4 >= 32
    return sub_99d5bae1[arg1]
}

function isLighthouse(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function sub_d8fe9250(?) payable {
    return sub_d8fe9250
}

function nonceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonceOf[arg1]
}

function isHashConsumed(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function gasPrice() payable {
    return gasPrice
}

function _fallback() payable {
    revert
}

function sub_feb67918(?) payable {
    require calldata.size - 4 >= 64
    require stor0[msg.sender]
    gasPrice = (999 * gasPrice) + block.gasprice / 1000
    sub_d8fe9250 += arg2
    sub_99d5bae1[address(arg1)] += arg2
    return 1
}

function wnFromGas(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(auctionAddress)
    staticcall auctionAddress.0xa6b513ee with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return arg1
    require ext_code.size(auctionAddress)
    staticcall auctionAddress.0xa6b513ee with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 3^(sub_d8fe9250 / 347 * 10^10)
    require ext_call.return_data[0]
    if 10^9 * 2^(sub_d8fe9250 / 347 * 10^10) * arg1 * gasPrice / 3^(sub_d8fe9250 / 347 * 10^10) / ext_call.return_data[0] < arg1:
        return arg1
    return (10^9 * 2^(sub_d8fe9250 / 347 * 10^10) * arg1 * gasPrice / 3^(sub_d8fe9250 / 347 * 10^10) / ext_call.return_data[0])
}

function sub_a51daf26(?) payable {
    require calldata.size - 4 >= 64
    require stor0[msg.sender]
    gasPrice = (999 * gasPrice) + block.gasprice / 1000
    sub_d8fe9250 += arg2
    sub_99d5bae1[address(arg1)] += arg2
    require ext_code.size(auctionAddress)
    staticcall auctionAddress.0xa6b513ee with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(xrtAddress)
        call xrtAddress.0x40c10f19 with:
             gas gas_remaining wei
            args tx.origin, arg2 + sub_99d5bae1[address(arg1)]
    else:
        require ext_code.size(auctionAddress)
        staticcall auctionAddress.0xa6b513ee with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 3^(sub_d8fe9250 / 347 * 10^10)
        require ext_call.return_data[0]
        require ext_code.size(xrtAddress)
        if (10^9 * arg2 * gasPrice * 2^(sub_d8fe9250 / 347 * 10^10)) + (10^9 * sub_99d5bae1[address(arg1)] * gasPrice * 2^(sub_d8fe9250 / 347 * 10^10)) / 3^(sub_d8fe9250 / 347 * 10^10) / ext_call.return_data[0] < arg2 + sub_99d5bae1[address(arg1)]:
            call xrtAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args tx.origin, arg2 + sub_99d5bae1[address(arg1)]
        else:
            call xrtAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args tx.origin, (10^9 * arg2 * gasPrice * 2^(sub_d8fe9250 / 347 * 10^10)) + (10^9 * sub_99d5bae1[address(arg1)] * gasPrice * 2^(sub_d8fe9250 / 347 * 10^10)) / 3^(sub_d8fe9250 / 347 * 10^10) / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function createLighthouse(uint256 arg1, uint256 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(ensAddress)
    staticcall ensAddress.resolver(bytes32 arg1) with:
            gas gas_remaining wei
           args sha3(0x8d6c004b56cbe83bbfd9dcbd8f45d1f76398267bbb130a4629d822abc1994b96, sha3(arg3[all]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[12 len 20]
    create contract with 0 wei
                    code: 0x603160008181600b9039f3600080, sub_773fb7fdAddress, 0x5af43d828181803e808314603057f35bfd
    require ext_code.size(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x64f6f7b9 with:
         gas gas_remaining wei
        args xrtAddress, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit NewLighthouse(Array(len=arg3.length, data=arg3[all]), address(create.new_address));
    stor0[address(create.new_address)] = 1
    require ext_code.size(ensAddress)
    call ensAddress.setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args 0x8d6c004b56cbe83bbfd9dcbd8f45d1f76398267bbb130a4629d822abc1994b96, sha3(arg3[all]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ensAddress)
    staticcall ensAddress.resolver(bytes32 arg1) with:
            gas gas_remaining wei
           args 0x8d6c004b56cbe83bbfd9dcbd8f45d1f76398267bbb130a4629d822abc1994b96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ensAddress)
    call ensAddress.setResolver(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(0x8d6c004b56cbe83bbfd9dcbd8f45d1f76398267bbb130a4629d822abc1994b96, sha3(arg3[all])), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setAddr(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(0x8d6c004b56cbe83bbfd9dcbd8f45d1f76398267bbb130a4629d822abc1994b96, sha3(arg3[all])), address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function createLiability(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require stor0[msg.sender]
    create contract with 0 wei
                    code: 0x603160008181600b9039f3600080, sub_5afa47c2Address, 0x5af43d828181803e808314603057f35bfd
    require ext_code.size(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x66d38203 with:
         gas gas_remaining wei
        args xrtAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit NewLiability(address(create.new_address));
    mem[220] = 0x48a984e400000000000000000000000000000000000000000000000000000000
    mem[224 len arg1.length] = arg1[all]
    mem[arg1.length + 224 len floor32(arg1.length + 4)] = mem[220 len floor32(arg1.length + 4)]
    mem[arg1.length + floor32(arg1.length + 4) + -(arg1.length + 4 % 32) + 256 len arg1.length + 4 % 32] = mem[-(arg1.length + 4 % 32) + floor32(arg1.length + 4) + 252 len arg1.length + 4 % 32]
    call address(create.new_address).mem[arg1.length + 224 len 4] with:
         gas gas_remaining wei
        args mem[arg1.length + 228 len arg1.length]
    require ext_call.success
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0xf0476bc5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not stor5[ext_call.return_data[0]]
    stor5[ext_call.return_data[0]] = 1
    emit HashConsumed(ext_call.return_data[0]);
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x474ce872 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    nonceOf[ext_call.return_data[12 len 20]]++
    if not return_data.size:
        mem[arg1.length + 256] = 0x413781d200000000000000000000000000000000000000000000000000000000
        mem[arg1.length + 260 len arg2.length] = arg2[all]
        mem[arg1.length + arg2.length + 260 len floor32(arg2.length + 4)] = mem[arg1.length + 256 len floor32(arg2.length + 4)]
        call address(create.new_address).mem[arg1.length + arg2.length + 260 len 4] with:
             gas gas_remaining wei
            args mem[arg1.length + arg2.length + 264 len arg2.length]
    else:
        mem[arg1.length + ceil32(return_data.size) + 257] = 0x413781d200000000000000000000000000000000000000000000000000000000
        mem[arg1.length + ceil32(return_data.size) + 261 len arg2.length] = arg2[all]
        mem[arg1.length + ceil32(return_data.size) + arg2.length + 261 len floor32(arg2.length + 4)] = mem[arg1.length + ceil32(return_data.size) + 257 len floor32(arg2.length + 4)]
        call address(create.new_address).mem[arg1.length + ceil32(return_data.size) + arg2.length + 261 len 4] with:
             gas gas_remaining wei
            args mem[arg1.length + ceil32(return_data.size) + arg2.length + 265 len arg2.length]
    require ext_call.success
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x699373ca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not stor5[ext_call.return_data[0]]
    stor5[ext_call.return_data[0]] = 1
    emit HashConsumed(ext_call.return_data[0]);
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0xc2d8de54 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    nonceOf[address(ext_call.return_data[0])]++
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x6301fd63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor0[address(ext_call.return_data[0])]
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).lighthouseFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    if ext_call.return_data[0] > 0:
        staticcall address(create.new_address).0xc2d8de54 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(create.new_address))
        staticcall address(create.new_address).lighthouseFee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(xrtAddress)
        call xrtAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), tx.origin, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    staticcall address(create.new_address).0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x13faede6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    if ext_call.return_data[0] > 0:
        staticcall address(create.new_address).0x474ce872 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(create.new_address))
        staticcall address(create.new_address).0x13faede6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(create.new_address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    staticcall address(create.new_address).0x3a5381b5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]):
        require ext_code.size(address(create.new_address))
        staticcall address(create.new_address).0x3f6d8256 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x474ce872 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x3f6d8256 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(xrtAddress)
            call xrtAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(create.new_address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    return address(create.new_address)
}



}
