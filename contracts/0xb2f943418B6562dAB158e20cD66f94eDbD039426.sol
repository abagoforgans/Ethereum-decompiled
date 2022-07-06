contract main {




// =====================  Runtime code  =====================


address partner1Address;
array of uint256 sub_2b7c252c;
uint8 stor2;
address stor2; offset 8
address partner2Address;
array of uint256 sub_954996f0;
uint8 sub_28f99eef;
address stor5; offset 8
array of uint256 sub_f483a545;
uint256 sub_87271987;
uint256 sub_6eb60f9f;
address sub_a42c7d23Address;
uint256 sub_dd580b36;
uint8 married;

function sub_28f99eef(?) {
    return bool(sub_28f99eef)
}

function sub_2b7c252c(?) {
    return sub_2b7c252c[0 len sub_2b7c252c.length]
}

function sub_6eb60f9f(?) {
    return sub_6eb60f9f
}

function sub_87271987(?) {
    return sub_87271987
}

function partner2() {
    return partner2Address
}

function sub_8f04cb02(?) {
    return bool(uint8(stor2.field_0))
}

function married() {
    return bool(married)
}

function sub_954996f0(?) {
    return sub_954996f0[0 len sub_954996f0.length]
}

function sub_a42c7d23(?) {
    return sub_a42c7d23Address
}

function partner1() {
    return partner1Address
}

function sub_dd580b36(?) {
    return sub_dd580b36
}

function sub_f483a545(?) {
    return sub_f483a545[0 len sub_f483a545.length]
}

function _fallback() payable {
  stop
}

function sub_6552af90(?) {
    require calldata.size - 4 >= 64
    if partner1Address != msg.sender:
        if partner2Address != msg.sender:
            revert with 0, 'Must be one of the partners'
    if arg1 == 1:
        if partner1Address != msg.sender:
            revert with 0, 'Must be partner 1'
        address(stor2.field_8) = arg2
    else:
        if arg1 != 2:
            revert with 0, '_partnerNumber must be 1 or 2'
        if partner2Address != msg.sender:
            revert with 0, 'Must be partner 2'
        stor5 = arg2
}

function withdrawFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if partner1Address != msg.sender:
        if partner2Address != msg.sender:
            revert with 0, 'Must be one of the partners'
    if uint8(stor2.field_0):
        if sub_28f99eef:
            if block.timestamp < sub_87271987 + (8760 * 24 * 3600 * sub_6eb60f9f):
                revert with 0, 'Lock time has not passed yet'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x21416d6f756e74206973206c6172676572207468616e2074686520617661696c61626c652062616c616e63,
                    mem[207 len 21]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7685b931(?) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        if address(stor2.field_8) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        75,
                        0x65506c65617365206163636570742066726f6d20746865206e6577206163636f756e7420796f75206861642070726f766964656420696e20757064617465506172746e6572416464726573,
                        mem[239 len 21]
        emit 0x5a0cb6e4: arg1, partner1Address, address(stor2.field_8)
        partner1Address = address(stor2.field_8)
        address(stor2.field_8) = 0
    else:
        if arg1 != 2:
            revert with 0, '_partnerNumber must be 1 or 2'
        if stor5 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        75,
                        0x65506c65617365206163636570742066726f6d20746865206e6577206163636f756e7420796f75206861642070726f766964656420696e20757064617465506172746e6572416464726573,
                        mem[239 len 21]
        emit 0x5a0cb6e4: arg1, partner2Address, stor5
        partner2Address = stor5
        stor5 = 0
}

function sub_b49a5bb2(?) {
    require calldata.size - 4 >= 32
    if partner1Address != msg.sender:
        if partner2Address != msg.sender:
            revert with 0, 'Must be one of the partners'
    if arg1 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x73546f2070726f636565642077697468206469766f72636520616e64206275726e2066756e64732c2070617373203120746f205f636f6e666972,
                    mem[222 len 6]
    if bool(married) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe416c7265616479206469766f726365642c2063616e6e6f74206469766f72636520616761696e,
                    mem[203 len 25]
    call sub_a42c7d23Address with:
       value eth.balance(this.address) * sub_dd580b36 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) - (eth.balance(this.address) * sub_dd580b36 / 100) wei
         gas 2300 * is_zero(value) wei
    married = 0
    emit 0x5edd2302: msg.sender, partner1Address, partner2Address
    return 0
}

function sub_4b7b3f8f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xa12103b8: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, msg.sender
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit 0xa12103b8: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32], msg.sender
}

function sub_1350f581(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if partner1Address != msg.sender:
        if partner2Address != msg.sender:
            revert with 0, 'Must be one of the partners'
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xde3f8200: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, msg.sender
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit 0xde3f8200: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32], msg.sender
}

function sub_bd47578f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if msg.sender == partner1Address:
        sub_2b7c252c[] = Array(len=arg1.length, data=arg1[all])
        uint8(stor2.field_0) = 1
        mem[ceil32(arg1.length) + 128] = 32
        mem[ceil32(arg1.length) + 160] = arg1.length
        mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xc8cdf539: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, 1, msg.sender
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
            emit 0xc8cdf539: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32], 1, msg.sender
    else:
        if partner2Address != msg.sender:
            revert with 0, 'Must be one of the partners'
        if msg.sender == partner1Address:
            sub_2b7c252c[] = Array(len=arg1.length, data=arg1[all])
            uint8(stor2.field_0) = 1
            mem[ceil32(arg1.length) + 128] = 32
            mem[ceil32(arg1.length) + 160] = arg1.length
            mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit 0xc8cdf539: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, 1, msg.sender
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
                emit 0xc8cdf539: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32], 1, msg.sender
        else:
            if msg.sender == partner2Address:
                sub_954996f0[] = Array(len=arg1.length, data=arg1[all])
                sub_28f99eef = 1
                mem[ceil32(arg1.length) + 128] = 32
                mem[ceil32(arg1.length) + 160] = arg1.length
                mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit 0xc8cdf539: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, 2, msg.sender
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
                    emit 0xc8cdf539: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32], 2, msg.sender
}



}
