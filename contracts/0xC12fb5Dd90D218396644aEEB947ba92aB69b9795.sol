contract main {


// =======================  Init code  ======================


address stor0;
address stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor4 = 0xd4bfd6a0088aecc764e3d327862cbe879285a5f0
    require not msg.value
    return code.data[91 len 3666]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_fd714544;
array of struct keys;
mapping of uint32 stor3;
address stor4;

function keys(uint256 arg1) {
    require arg1 < keys.length
    return Mask(192, 64, keys[arg1].field_0)
}

function sub_301cbd79(?) {
    return keys.length
}

function owner() {
    return owner
}

function sub_fd714544(?) {
    return sub_fd714544[Mask(192, 64, arg1)].field_0, 
           sub_fd714544[Mask(192, 64, arg1)].field_256,
           sub_fd714544[Mask(192, 64, arg1)].field_256,
           sub_fd714544[Mask(192, 64, arg1)].field_256,
           sub_fd714544[Mask(192, 64, arg1)].field_512,
           sub_fd714544[Mask(192, 64, arg1)].field_768,
           bool(sub_fd714544[Mask(192, 64, arg1)].field_832)
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function sub_9170fafd(?) {
    return arg1, arg2, 0
}

function setPriceOracle(address arg1) {
    require owner == msg.sender
    stor4 = arg1
}

function sub_e07e3d71(?) {
    require owner == msg.sender
    require not sub_fd714544[address(arg1) or uint32(arg2) << 64].field_768
    sub_fd714544[address(arg1) or uint32(arg2) << 64].field_768 = arg3
}

function sub_6577ba5a(?) {
    require owner == msg.sender
    require not sub_fd714544[address(arg1) or uint32(arg2) << 64].field_512
    sub_fd714544[address(arg1) or uint32(arg2) << 64].field_448 = arg3
    sub_fd714544[address(arg1) or uint32(arg2) << 64].field_512 = arg4
}

function sub_eadab7a0(?) {
    require owner == msg.sender
    require not sub_fd714544[0].field_832
    call arg1 with:
       value sub_fd714544[address(arg1) or uint32(arg2) << 64].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_fd714544[address(arg1) or uint32(arg2) << 64].field_832 = 1
}

function sub_f1228d15(?) {
    require owner == msg.sender
    require not sub_fd714544[address(arg1) or uint32(arg2) << 64].field_512
    require sub_fd714544[address(arg1) or uint32(arg2) << 64].field_0 > arg3
    call arg1 with:
       value sub_fd714544[address(arg1) or uint32(arg2) << 64].field_0 - arg3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_fd714544[address(arg1) or uint32(arg2) << 64].field_0 = arg3
}

function sub_6c6784ca(?) {
    require owner == msg.sender
    require not sub_fd714544[uint32(arg2) << 64 or address(arg1)].field_832
    require sub_fd714544[uint32(arg2) << 64 or address(arg1)].field_768
    require ext_code.size(stor4)
    call stor4.0x771c0925 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require sub_fd714544[uint32(arg2) << 64 or address(arg1)].field_0 * ext_call.return_data[0] <= 10^18 * sub_fd714544[uint32(arg2) << 64 or address(arg1)].field_512
    call owner with:
       value sub_fd714544[uint32(arg2) << 64 or address(arg1)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_fd714544[uint32(arg2) << 64 or address(arg1)].field_832 = 1
}

function _fallback() payable {
    if not stor3[address(msg.sender)]:
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_0 = msg.value
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = msg.sender
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = stor3[address(msg.sender)]
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_416 = 0
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_448 = 0
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_768 = 0
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_1024 = 0
        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_832 = 0
        keys.length++
        if not keys.length <= keys.length + 1:
            idx = keys.length + 1
            while keys.length > idx:
                keys[idx].field_0 = 0
                idx = idx + 1
                continue 
        keys[keys.length].field_0 = stor3[address(msg.sender)]
        keys[keys.length].field_32 = msg.sender
        stor3[address(msg.sender)] = uint32(stor3[address(msg.sender)] + 1)
        emit 0x64dde113: msg.sender, msg.value, stor3[address(msg.sender)]
    else:
        if sub_fd714544[address(msg.sender) or uint32(stor3[address(msg.sender)] - 1) << 64].field_832:
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_0 = msg.value
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = msg.sender
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = stor3[address(msg.sender)]
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_416 = 0
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_448 = 0
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_768 = 0
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_1024 = 0
            sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_832 = 0
            keys.length++
            if not keys.length <= keys.length + 1:
                idx = keys.length + 1
                while keys.length > idx:
                    keys[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            keys[keys.length].field_0 = stor3[address(msg.sender)]
            keys[keys.length].field_32 = msg.sender
            stor3[address(msg.sender)] = uint32(stor3[address(msg.sender)] + 1)
            emit 0x64dde113: msg.sender, msg.value, stor3[address(msg.sender)]
        else:
            if not sub_fd714544[address(msg.sender) or uint32(stor3[address(msg.sender)] - 1) << 64].field_0:
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_0 = msg.value
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = msg.sender
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = stor3[address(msg.sender)]
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_416 = 0
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_448 = 0
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_768 = 0
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_1024 = 0
                sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_832 = 0
                keys.length++
                if not keys.length <= keys.length + 1:
                    idx = keys.length + 1
                    while keys.length > idx:
                        keys[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                keys[keys.length].field_0 = stor3[address(msg.sender)]
                keys[keys.length].field_32 = msg.sender
                stor3[address(msg.sender)] = uint32(stor3[address(msg.sender)] + 1)
                emit 0x64dde113: msg.sender, msg.value, stor3[address(msg.sender)]
            else:
                if sub_fd714544[address(msg.sender) or uint32(stor3[address(msg.sender)] - 1) << 64].field_512:
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_0 = msg.value
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = msg.sender
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = stor3[address(msg.sender)]
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_416 = 0
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_448 = 0
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_768 = 0
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_1024 = 0
                    sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_832 = 0
                    keys.length++
                    if not keys.length <= keys.length + 1:
                        idx = keys.length + 1
                        while keys.length > idx:
                            keys[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    keys[keys.length].field_0 = stor3[address(msg.sender)]
                    keys[keys.length].field_32 = msg.sender
                    stor3[address(msg.sender)] = uint32(stor3[address(msg.sender)] + 1)
                    emit 0x64dde113: msg.sender, msg.value, stor3[address(msg.sender)]
                else:
                    if bool(msg.sender) or bool(uint32(stor3[address(msg.sender)] - 1)):
                        sub_fd714544[address(msg.sender) or uint32(stor3[address(msg.sender)] - 1) << 64].field_0 += msg.value
                        emit 0x64dde113: msg.sender, msg.value + sub_fd714544[address(msg.sender) or uint32(stor3[address(msg.sender)] - 1) << 64].field_0, uint32(stor3[address(msg.sender)] - 1)
                    else:
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_0 = msg.value
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = msg.sender
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_256 = stor3[address(msg.sender)]
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_416 = 0
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_448 = 0
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_512 = 0
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_768 = 0
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_1024 = 0
                        sub_fd714544[address(msg.sender) or stor3[address(msg.sender)] << 64].field_832 = 0
                        keys.length++
                        if not keys.length <= keys.length + 1:
                            idx = keys.length + 1
                            while keys.length > idx:
                                keys[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        keys[keys.length].field_0 = stor3[address(msg.sender)]
                        keys[keys.length].field_32 = msg.sender
                        stor3[address(msg.sender)] = uint32(stor3[address(msg.sender)] + 1)
                        emit 0x64dde113: msg.sender, msg.value, stor3[address(msg.sender)]
}



}
