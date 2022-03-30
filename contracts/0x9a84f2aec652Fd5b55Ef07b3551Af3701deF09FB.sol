contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
array of struct stor4;
uint256 stor5;

function _fallback() {
    mem[96 len -1731] = code.data[2192 len -1731]
    mem[64] = -1635
    _6 = mem[224]
    _7 = mem[256]
    stor0 = mem[108 len 20]
    address(stor1.length) = mem[140 len 20]
    stor2.length = mem[160]
    stor3 = (60 * mem[192]) + block.timestamp
    stor5 = 0
    _28 = mem[mem[224] + 96]
    idx = 0
    while idx < _28:
        stor4.length++
        if not stor4.length > stor4.length + 1:
            mem[0] = 4
            _31 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_6 + 96]
            mem[_31] = mem[(32 * idx) + _6 + 140 len 20]
            require idx < mem[_7 + 96]
            mem[_31 + 32] = mem[(32 * idx) + _7 + 128]
            mem[_31 + 64] = 0
            stor4[stor4.length].field_0 = mem[_31 + 12 len 20]
            uint256(stor4[stor4.length].field_256) = mem[_31 + 32]
        else:
            s = sha3(4) + (3 * stor4.length) + 3
            while sha3(4) + (3 * stor4.length) > s:
                stor[s] = 0
                uint256(stor1[s]) = 0
                stor2[s] = 0
                s = s + 3
                continue 
            mem[0] = 4
            _49 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_6 + 96]
            mem[_49] = mem[(32 * idx) + _6 + 140 len 20]
            require idx < mem[_7 + 96]
            mem[_49 + 32] = mem[(32 * idx) + _7 + 128]
            mem[_49 + 64] = 0
            stor4[stor4.length].field_0 = mem[_49 + 12 len 20]
            uint256(stor4[stor4.length].field_256) = mem[_49 + 32]
        uint256(stor4[stor4.length].field_512) = 0
        idx = idx + 1
        continue 
    return code.data[461 len 1731]
}



// =====================  Runtime code  =====================


address sub_ef92ebdeAddress;
address sub_07fb4e58Address;
uint256 sub_84cd46bc;
uint256 sub_72d8e1a1;
array of struct sub_31af2233;
uint256 status;

function sub_07fb4e58(?) {
    return sub_07fb4e58Address
}

function status() {
    return status
}

function sub_31af2233(?) {
    require arg1 < sub_31af2233.length
    return sub_31af2233[arg1].field_0, sub_31af2233[arg1].field_256, sub_31af2233[arg1].field_512
}

function sub_72d8e1a1(?) {
    return sub_72d8e1a1
}

function sub_84cd46bc(?) {
    return sub_84cd46bc
}

function sub_ef92ebde(?) {
    return sub_ef92ebdeAddress
}

function sub_d2f8467f(?) payable {
    if block.timestamp >= sub_72d8e1a1:
        if not status:
            s = 0
            idx = 0
            while idx < sub_31af2233.length:
                require sub_31af2233.length
                require idx < sub_31af2233.length
                mem[0] = 4
                if sub_31af2233[idx].field_512 >= sub_84cd46bc / sub_31af2233.length:
                    require idx < sub_31af2233.length
                    call sub_31af2233[idx].field_0 with:
                       value sub_84cd46bc / sub_31af2233.length wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require idx < sub_31af2233.length
                    mem[0] = 4
                    mem[96] = sub_31af2233[idx].field_0
                    mem[128] = sub_84cd46bc / sub_31af2233.length
                    emit 0xc957d958: sub_31af2233[idx].field_0, sub_84cd46bc / sub_31af2233.length
                s = sub_84cd46bc / sub_31af2233.length
                idx = idx + 1
                continue 
            emit 0xc957d958: sub_07fb4e58Address, eth.balance(this.address)
            call sub_07fb4e58Address with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            status = 2
            emit 0xf6658b50: 2
}

function _fallback() payable {
    if status != 0:
        if msg.value <= 0:
        emit 0xc957d958: sub_07fb4e58Address, eth.balance(this.address)
        call sub_07fb4e58Address with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if msg.value > 0:
        emit 0x9df2cb91: msg.sender, msg.value
        idx = 0
        s = 0
        while idx < sub_31af2233.length:
            if sub_31af2233[idx].field_0 != msg.sender:
                require sub_31af2233.length
                require idx < sub_31af2233.length
                mem[0] = 4
                if sub_31af2233[idx].field_512 >= sub_84cd46bc / sub_31af2233.length:
                    idx = idx + 1
                    s = s
                    continue 
                if not s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if s:
                    require sub_31af2233.length
                    require idx < sub_31af2233.length
                    mem[0] = 4
                    if sub_31af2233[idx].field_512 >= sub_84cd46bc / sub_31af2233.length:
                        idx = idx + 1
                        s = s
                        continue 
                    if not s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require idx < sub_31af2233.length
                    sub_31af2233[idx].field_512 += msg.value
                    require sub_31af2233.length
                    require idx < sub_31af2233.length
                    mem[0] = 4
                    if sub_31af2233[idx].field_512 >= sub_84cd46bc / sub_31af2233.length:
                        idx = idx + 1
                        s = 1
                        continue 
        emit 0xc957d958: sub_ef92ebdeAddress, sub_84cd46bc
        call sub_ef92ebdeAddress with:
           value sub_84cd46bc wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xc957d958: sub_07fb4e58Address, eth.balance(this.address)
        call sub_07fb4e58Address with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        status = 1
        emit 0xf6658b50: 1
}



}
