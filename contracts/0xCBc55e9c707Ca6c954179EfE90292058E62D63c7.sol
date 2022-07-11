contract main {




// =====================  Runtime code  =====================


array of address providers;
mapping of uint256 stakes;
uint256 sub_9ec41a2d;
uint256 sub_678bd169;
uint256 sub_4ed75ded;
uint256 marker;
uint256 quota;
uint128 stor7; offset 160
address factoryAddress;
uint256 stor7;
address xrtAddress;
mapping of uint256 indexOf;

function stakes(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakes[arg1]
}

function xrt() payable {
    return xrtAddress
}

function marker() payable {
    return marker
}

function sub_4ed75ded(?) payable {
    return sub_4ed75ded
}

function providers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < providers.length
    return address(providers[arg1])
}

function sub_678bd169(?) payable {
    return sub_678bd169
}

function sub_9ec41a2d(?) payable {
    return sub_9ec41a2d
}

function providersLength() payable {
    return providers.length
}

function factory() payable {
    return factoryAddress
}

function quota() payable {
    return quota
}

function indexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return indexOf[arg1]
}

function _fallback() payable {
    revert
}

function quotaOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require sub_9ec41a2d
    return (stakes[address(arg1)] / sub_9ec41a2d)
}

function setup(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not factoryAddress
    require arg2 > 0
    require arg3 > 0
    sub_9ec41a2d = arg2
    sub_678bd169 = arg3
    uint256(stor7.field_0) = Mask(96, 0, stor7.field_160)
    xrtAddress = arg1
    return 1
}

function refill(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(xrtAddress)
    call xrtAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not stakes[msg.sender]:
        require arg1 >= sub_9ec41a2d
        providers.length++
        uint256(providers[providers.length]) = msg.sender or Mask(96, 160, uint256(providers[providers.length]))
        indexOf[msg.sender] = providers.length
        emit Online(msg.sender);
    stakes[msg.sender] += arg1
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= stakes[msg.sender]
    stakes[msg.sender] -= arg1
    require ext_code.size(xrtAddress)
    call xrtAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_9ec41a2d
    if not stakes[address(msg.sender)] / sub_9ec41a2d:
        stakes[msg.sender] = 0
        require ext_code.size(xrtAddress)
        call xrtAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stakes[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if indexOf[msg.sender] < providers.length:
            require providers.length - 1 < providers.length
            require indexOf[msg.sender] - 1 < providers.length
            address(providers[stor9[msg.sender]]) = address(providers[providers.length])
        providers.length--
        if providers.length > providers.length - 1:
            idx = providers.length - 1
            while providers.length > idx:
                uint256(providers[idx]) = 0
                idx = idx + 1
                continue 
        indexOf[msg.sender] = 0
        emit Offline(msg.sender);
    return 1
}

function createLiability(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    idx = 0
    s = gas_remaining + 21000
    while idx < calldata.size:
        idx = idx + 1
        s = s + 4
        continue 
    if sub_678bd169 < block.number - sub_4ed75ded:
        marker = indexOf[msg.sender]
        require indexOf[msg.sender]
        require marker <= providers.length
        require marker - 1 < providers.length
        require sub_9ec41a2d
        quota = stakes[address(stor0[stor5])] / sub_9ec41a2d
        require marker - 1 < providers.length
        emit Current(address(providers[stor5]), quota);
    sub_4ed75ded = block.number
    require providers.length
    require quota > 0
    require marker - 1 < providers.length
    require msg.sender == address(providers[stor5])
    if quota > 1:
        quota--
    else:
        require providers.length
        marker = (marker % providers.length) + 1
        require marker % providers.length < providers.length
        require sub_9ec41a2d
        quota = stakes[address(stor0[stor5 % stor0.length])] / sub_9ec41a2d
        require marker - 1 < providers.length
        emit Current(address(providers[stor5]), quota);
    mem[ceil32(arg1.length) + 196] = arg2.length
    mem[ceil32(arg1.length) + 228 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 228] = 0
    require ext_code.size(factoryAddress)
    call factoryAddress.0xd2b962f2 with:
         gas gas_remaining wei
        args 0, 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[arg1.length + 228 len ceil32(arg1.length) - arg1.length], arg2[all], mem[ceil32(arg1.length) + arg2.length + 228 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require ext_code.size(factoryAddress)
    call factoryAddress.0xfeb67918 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), (4 * calldata.size) + 25887
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_563e52d5(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    idx = 0
    s = gas_remaining + 21000
    while idx < calldata.size:
        idx = idx + 1
        s = s + 4
        continue 
    if sub_678bd169 < block.number - sub_4ed75ded:
        marker = indexOf[msg.sender]
        require indexOf[msg.sender]
        require marker <= providers.length
        require marker - 1 < providers.length
        require sub_9ec41a2d
        quota = stakes[address(stor0[stor5])] / sub_9ec41a2d
        require marker - 1 < providers.length
        emit Current(address(providers[stor5]), quota);
    sub_4ed75ded = block.number
    require providers.length
    require quota > 0
    require marker - 1 < providers.length
    require msg.sender == address(providers[stor5])
    if quota > 1:
        quota--
    else:
        require providers.length
        marker = (marker % providers.length) + 1
        require marker % providers.length < providers.length
        require sub_9ec41a2d
        quota = stakes[address(stor0[stor5 % stor0.length])] / sub_9ec41a2d
        require marker - 1 < providers.length
        emit Current(address(providers[stor5]), quota);
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x99d5bae1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    mem[ceil32(arg2.length) + 228] = arg4.length
    mem[ceil32(arg2.length) + 260 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + arg4.length + 260] = 0
    require ext_code.size(arg1)
    call arg1.0x4fe6365e with:
         gas gas_remaining wei
        args 0, 96, arg3, ceil32(arg2.length) + 128, arg2.length, arg2[all], 0, mem[arg2.length + 260 len ceil32(arg2.length) + ceil32(arg4.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(factoryAddress)
    call factoryAddress.0xa51daf26 with:
         gas gas_remaining wei
        args address(arg1), (4 * calldata.size) + 43335
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}



}
