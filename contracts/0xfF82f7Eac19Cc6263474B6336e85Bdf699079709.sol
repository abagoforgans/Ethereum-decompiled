contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_19aaaf01;
uint256 sub_e2603c30;
address stor3;
uint256 sub_4b0177dc;
uint256 sub_a1579e73;
uint256 sub_e343cf62;
uint256 sub_eb391917;
uint256 sub_39509a8f;
uint8 stor9;
uint256 sub_61ed368c;
uint256 sub_fcd667c4;
uint256 sub_b1cb7f29;

function sub_02a34ee1(?) {
    return bool(stor9)
}

function sub_19aaaf01(?) {
    return sub_19aaaf01
}

function sub_39509a8f(?) {
    return sub_39509a8f
}

function sub_4b0177dc(?) {
    return sub_4b0177dc
}

function sub_61ed368c(?) {
    return sub_61ed368c
}

function owner() {
    return owner
}

function sub_a1579e73(?) {
    return sub_a1579e73
}

function sub_b1cb7f29(?) {
    return sub_b1cb7f29
}

function sub_e2603c30(?) {
    return sub_e2603c30
}

function sub_e343cf62(?) {
    return sub_e343cf62
}

function sub_eb391917(?) {
    return sub_eb391917
}

function sub_fcd667c4(?) {
    return sub_fcd667c4
}

function _fallback() payable {
    revert
}

function sub_03dc14fc(?) {
    if owner != msg.sender:
        revert with 0, 'only owner can set'
    sub_61ed368c = arg1
    sub_fcd667c4 = arg2
    sub_b1cb7f29 = arg3
}

function setConfig(uint256 arg1, uint256 arg2, address arg3) {
    if owner != msg.sender:
        revert with 0, 'only owner can set'
    sub_19aaaf01 = arg1
    sub_e2603c30 = arg2
    stor3 = arg3
}

function sub_f2d46841(?) {
    if owner != msg.sender:
        revert with 0, 'only owner can set'
    sub_4b0177dc = arg1
    sub_a1579e73 = arg2
    sub_e343cf62 = arg3
    sub_eb391917 = arg4
    sub_39509a8f = arg5
    stor9 = uint8(arg6)
}

function sub_57766c71(?) {
    require ext_code.size(stor3)
    call stor3.0x29836cfa with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return code.data[4124 len 160], code.data[4124 len 160], 5
    require ext_code.size(stor3)
    call stor3.0x29836cfa with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return code.data[4156 len 128] >> 1024, code.data[4156 len 128] >> 1024, 5
    require ext_code.size(stor3)
    call stor3.0x29836cfa with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor9:
        return code.data[4188 len 96] >> 1024, code.data[4188 len 96] >> 1024, 5
    if not ext_call.return_data[12 len 20]:
        return code.data[4188 len 96] >> 1024, code.data[4188 len 96] >> 1024, 5
    require ext_code.size(stor3)
    call stor3.0x698e2d57 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0x29836cfa with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_61ed368c:
        if not ext_call.return_data[12 len 20]:
            return code.data[4188 len 96] >> 1024, code.data[4188 len 96] >> 1024, 5
        require ext_code.size(stor3)
        call stor3.0x698e2d57 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.0x29836cfa with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_fcd667c4:
            if not ext_call.return_data[12 len 20]:
                return code.data[4188 len 96] >> 1024, code.data[4188 len 96] >> 1024, 5
            require ext_code.size(stor3)
            call stor3.0x698e2d57 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_b1cb7f29:
                return code.data[4188 len 96] >> 1024, code.data[4188 len 96] >> 1024, 5
            return code.data[4188 len 64], address(ext_call.return_data[0]) >> 1024, 
                   arg2 * sub_4b0177dc / 10000, arg2 * sub_a1579e73 / 10000, code.data[4188 len 64], arg2 * sub_39509a8f / 10000 >> 1024,
                   5
        if not ext_call.return_data[12 len 20]:
            return code.data[4252 len 32] >> 1024, code.data[4252 len 32] >> 1024, 5
        require ext_code.size(stor3)
        call stor3.0x698e2d57 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_b1cb7f29:
            return code.data[4252 len 32] >> 1024, code.data[4252 len 32] >> 1024, 5
        return address(ext_call.return_data[0]), address(ext_call.return_data[0]) >> 1024, 
               arg2 * sub_4b0177dc / 10000, arg2 * sub_a1579e73 / 10000, code.data[4188 len 32], arg2 * sub_eb391917 / 10000, arg2 * sub_39509a8f / 10000 >> 1024,
               5
    if not ext_call.return_data[12 len 20]:
        return code.data[4220 len 64] >> 1024, code.data[4220 len 64] >> 1024, 5
    require ext_code.size(stor3)
    call stor3.0x698e2d57 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0x29836cfa with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_fcd667c4:
        if not ext_call.return_data[12 len 20]:
            return code.data[4220 len 64] >> 1024, code.data[4220 len 64] >> 1024, 5
        require ext_code.size(stor3)
        call stor3.0x698e2d57 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_b1cb7f29:
            return code.data[4220 len 64] >> 1024, code.data[4220 len 64] >> 1024, 5
        return code.data[4220 len 32], address(ext_call.return_data[0]) >> 1024, 
               arg2 * sub_4b0177dc / 10000, arg2 * sub_a1579e73 / 10000, arg2 * sub_e343cf62 / 10000, code.data[4220 len 32], arg2 * sub_39509a8f / 10000 >> 1024,
               5
    if not ext_call.return_data[12 len 20]:
        return code.data[4252 len 32] >> 1024, code.data[4252 len 32] >> 1024, 5
    require ext_code.size(stor3)
    call stor3.0x698e2d57 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_b1cb7f29:
        return code.data[4252 len 32] >> 1024, code.data[4252 len 32] >> 1024, 5
    return address(ext_call.return_data[0]), address(ext_call.return_data[0]) >> 1024, 
           arg2 * sub_4b0177dc / 10000, arg2 * sub_a1579e73 / 10000, arg2 * sub_e343cf62 / 10000, arg2 * sub_eb391917 / 10000, arg2 * sub_39509a8f / 10000 >> 1024,
           5
}

function sub_6c1dc9fa(?) {
    require sub_19aaaf01
    if block.timestamp - call.data[4] / 60 / 60 / sub_19aaaf01 < 7:
        revert with 0, 'nowday < 7'
    if call.data[68] > (2 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + (7 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100 * call.data[228] / 10000) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100):
        revert with 0, 'amt is not right'
    if block.timestamp - call.data[4] / 60 / 60 / sub_19aaaf01 < 14:
        if (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 < arg1:
            revert with 0, 'w2 safe check'
        if ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) - arg1 < call.data[68]:
            revert with 0, 'w2 excceed'
        return call.data[68], 0
    if block.timestamp - call.data[4] / 60 / 60 / sub_19aaaf01 < 21:
        if arg1 > ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100):
            revert with 0, 'w3 safe check'
        if ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) - arg1 < call.data[68]:
            revert with 0, 'w3 excceed'
        return call.data[68], 0
    require arg1 <= ((50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100)
    if call.data[68] <= ((50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) - arg1:
        return call.data[68], 0
    if call.data[100] < call.data[36]:
        revert with 0, 're-take amt wrong'
    if call.data[100] > sub_e2603c30:
        revert with 0, 'maxPerInvest excceed'
    if arg1 > (2 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + (7 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100 * call.data[228] / 10000) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100):
        revert with 0, 'wo cao ,dont say impossible'
    return ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (2 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + (7 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100 * call.data[228] / 10000) - arg1, 
           1
}



}
