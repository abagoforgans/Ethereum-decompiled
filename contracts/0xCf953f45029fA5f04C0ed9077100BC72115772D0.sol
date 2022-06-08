contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 sub_5d851a63;
mapping of uint8 stor8;
address stor9;

function sub_5d851a63(?) {
    return sub_5d851a63
}

function _fallback() payable {
    revert
}

function sub_3e769295(?) {
    return stor4, stor5, stor1
}

function changeTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor9)
    staticcall stor9.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor3 = 3600 * arg1
}

function sub_d8b65131(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor9)
    staticcall stor9.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor8[address(arg1)] = uint8(arg2)
}

function changeMapping(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor9)
    staticcall stor9.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor9 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x8fe77e86 with:
            gas gas_remaining wei
           args Array(len=4, data='nest')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
}

function sub_40f4f7b9(?) {
    require sub_5d851a63 == (1000000000 * 10^18 * sub_5d851a63 / 1000000000 * 10^18) + (sub_5d851a63 % 1000000000 * 10^18)
    if sub_5d851a63 / 1000000000 * 10^18 <= 9:
        idx = 0
        s = 10^18
        while idx < sub_5d851a63 / 1000000000 * 10^18:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require 8 * s / s == 8
            require 8 * s == (10 * 8 * s / 10) + (8 * s % 10)
            idx = idx + 1
            s = 8 * s / 10
            continue 
    else:
        idx = 0
        s = 10^18
        while idx < 9:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require 8 * s / s == 8
            require 8 * s == (10 * 8 * s / 10) + (8 * s % 10)
            idx = idx + 1
            s = 8 * s / 10
            continue 
    return stor1, s
}

function sub_1b49583b(?) {
    require calldata.size - 4 >= 64
    require 1 == bool(stor8[msg.sender])
    require ext_code.size(address(stor0))
    staticcall address(stor0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        require ext_code.size(address(stor0))
        call address(stor0).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp >= stor5:
            if 200000 * 10^18 >= stor6:
                stor1 = 10
            else:
                if stor6 > 200000 * 10^18:
                    if stor6 <= 600000 * 10^18:
                        stor1 = 8
                    else:
                        if stor6 > 2000000 * 10^18:
                            stor1 = 3
                        else:
                            stor1 = 5
            stor6 = 0
            stor4 = block.timestamp
            stor5 = stor3 + block.timestamp
        stor6 += arg1
        sub_5d851a63 += arg1
}



}
