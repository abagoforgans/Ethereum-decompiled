contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor4;

function _fallback() {
    require code.data[1603 len 32] <= 0x100000000000000000000000000000000
    stor0 = code.data[1551 len 20]
    stor1 = code.data[1583 len 20]
    stor4 = code.data[1603 len 32]
    return code.data[147 len 1392]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function terminate() {
    require stor1 == msg.sender
    require stor2 <= 0
    if eth.balance(this.address) > 0:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function getCapital(uint256 arg1) {
    if stor2 <= 0:
        return stor2
    if stor3 >= arg1:
        return stor2
    if stor4 >= 0x100000000000000000000000000000000:
        return stor2
    idx = arg1 - stor3
    s = stor4
    while idx > 0:
        if bool(idx):
            require s < 0x100000000000000000000000000000000
            idx = idx - 1
            s = s
            continue 
        require s <= 0x100000000000000000000000000000000
        require s < 0x100000000000000000000000000000000
        idx = idx / 2
        s = Mask(128, 128, (s * s) + 0x80000000000000000000000000000000) >> 128
        continue 
    revert
}

function deposit() payable {
    if msg.value > 0:
        if stor2 > 0:
            if stor3 < block.timestamp:
                if stor4 < 0x100000000000000000000000000000000:
                    idx = block.timestamp - stor3
                    s = stor4
                    while idx > 0:
                        if bool(idx):
                            require s < 0x100000000000000000000000000000000
                            idx = idx - 1
                            s = s
                            continue 
                        require s <= 0x100000000000000000000000000000000
                        require s < 0x100000000000000000000000000000000
                        idx = idx / 2
                        s = Mask(128, 128, (s * s) + 0x80000000000000000000000000000000) >> 128
                        continue 
                    revert
        stor3 = block.timestamp
        require msg.value < -stor2 + 0x100000000000000000000000000000000
        stor2 += msg.value
        emit Deposit(msg.value, msg.sender);
}

function withdrawAll() {
    require stor0 == msg.sender
    if stor2 <= 0:
        stor3 = block.timestamp
    else:
        if stor3 < block.timestamp:
            if stor4 < 0x100000000000000000000000000000000:
                idx = block.timestamp - stor3
                s = stor4
                while idx > 0:
                    if bool(idx):
                        require s < 0x100000000000000000000000000000000
                        idx = idx - 1
                        s = s
                        continue 
                    require s <= 0x100000000000000000000000000000000
                    require s < 0x100000000000000000000000000000000
                    idx = idx / 2
                    s = Mask(128, 128, (s * s) + 0x80000000000000000000000000000000) >> 128
                    continue 
                revert
        stor3 = block.timestamp
        if stor2 > 0:
            call stor0 with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                return 0
            emit Withdrawal(stor2);
            stor2 = 0
    return 1
}

function withdraw(uint256 arg1) {
    require stor0 == msg.sender
    if arg1 > 0:
        if stor2 > 0:
            if stor3 < block.timestamp:
                if stor4 < 0x100000000000000000000000000000000:
                    idx = block.timestamp - stor3
                    s = stor4
                    while idx > 0:
                        if bool(idx):
                            require s < 0x100000000000000000000000000000000
                            idx = idx - 1
                            s = s
                            continue 
                        require s <= 0x100000000000000000000000000000000
                        require s < 0x100000000000000000000000000000000
                        idx = idx / 2
                        s = Mask(128, 128, (s * s) + 0x80000000000000000000000000000000) >> 128
                        continue 
                    revert
        stor3 = block.timestamp
        if arg1 > stor2:
            return 0
        call stor0 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return 0
        emit Withdrawal(arg1);
        stor2 -= arg1
    return 1
}

function withdrawFee() {
    require stor1 == msg.sender
    if stor2 <= 0:
        if eth.balance(this.address) - stor2 <= 0:
            return 1
        call stor1 with:
           value eth.balance(this.address) - stor2 wei
             gas 2300 * is_zero(value) wei
        return bool(ext_call.success)
    if stor3 >= block.timestamp:
        if eth.balance(this.address) - stor2 <= 0:
            return 1
        call stor1 with:
           value eth.balance(this.address) - stor2 wei
             gas 2300 * is_zero(value) wei
        return bool(ext_call.success)
    if stor4 >= 0x100000000000000000000000000000000:
        if eth.balance(this.address) - stor2 <= 0:
            return 1
        call stor1 with:
           value eth.balance(this.address) - stor2 wei
             gas 2300 * is_zero(value) wei
        return bool(ext_call.success)
    idx = block.timestamp - stor3
    s = stor4
    while idx > 0:
        if bool(idx):
            require s < 0x100000000000000000000000000000000
            idx = idx - 1
            s = s
            continue 
        require s <= 0x100000000000000000000000000000000
        require s < 0x100000000000000000000000000000000
        idx = idx / 2
        s = Mask(128, 128, (s * s) + 0x80000000000000000000000000000000) >> 128
        continue 
    revert
}



}
