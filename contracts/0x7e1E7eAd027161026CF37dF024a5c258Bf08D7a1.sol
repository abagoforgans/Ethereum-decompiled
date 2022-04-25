contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() {
    stor3 = msg.sender
    return code.data[64 len 2828]
}



// =====================  Runtime code  =====================


const name = 'Test PARKGENE Promo Token'

const decimals = 0

const symbol = 'TESTGENEP'


mapping of struct stor0;
mapping of uint256 allowance;
uint256 totalSupply;
address stor3;

function totalSupply() {
    return totalSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require stor3 == msg.sender
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function massNotify(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor3 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _8 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 777
        emit Transfer(777, 0, address(_8));
        idx = idx + 1
        continue 
}

function balanceOf(address arg1) {
    if Mask(1, 255, stor0[address(arg1)].field_0):
        if stor0[address(arg1)].field_0 <= -1:
            return stor0[address(arg1)].field_0
    else:
        if eth.balance(arg1) >= 10^17:
            if 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply:
                if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    if stor0[address(arg1)].field_0 <= -778:
                        return (stor0[address(arg1)].field_0 + 777)
                else:
                    if stor0[address(arg1)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        return (-totalSupply + stor0[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            if 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply:
                if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    if stor0[address(arg1)].field_0 <= -1:
                        return stor0[address(arg1)].field_0
                else:
                    if stor0[address(arg1)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        return (-totalSupply + stor0[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    revert
}

function transfer(address arg1, uint256 arg2) {
    if Mask(1, 255, stor0[address(msg.sender)].field_0):
        require stor0[address(msg.sender)].field_0 <= -1
        if arg2 > stor0[address(msg.sender)].field_0:
            return 0
    else:
        require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
        if eth.balance(msg.sender) >= 10^17:
            if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                require stor0[address(msg.sender)].field_0 <= -778
                if arg2 > stor0[address(msg.sender)].field_0 + 777:
                    return 0
            else:
                require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                if arg2 > -totalSupply + stor0[address(msg.sender)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    return 0
        else:
            if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                require stor0[address(msg.sender)].field_0 <= -1
                if arg2 > stor0[address(msg.sender)].field_0:
                    return 0
            else:
                require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                if arg2 > -totalSupply + stor0[address(msg.sender)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    return 0
    if not Mask(1, 255, stor0[address(msg.sender)].field_0):
        if arg2 > stor0[address(msg.sender)].field_0:
            if Mask(1, 255, stor0[address(msg.sender)].field_0):
                require arg2 >= stor0[address(msg.sender)].field_0
                require arg2 - stor0[address(msg.sender)].field_0 <= 0
                require stor0[address(msg.sender)].field_0 <= -1
                stor0[address(msg.sender)].field_248 = 128
                require totalSupply <= -1
            else:
                require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
                require arg2 >= stor0[address(msg.sender)].field_0
                if eth.balance(msg.sender) >= 10^17:
                    if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        require arg2 - stor0[address(msg.sender)].field_0 <= 777
                        require stor0[address(msg.sender)].field_0 <= -778
                        stor0[address(msg.sender)].field_0 = 128
                        require totalSupply <= -778
                        totalSupply += 777
                    else:
                        require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        stor0[address(msg.sender)].field_0 = 128
                        require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                else:
                    if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        require arg2 - stor0[address(msg.sender)].field_0 <= 0
                        require stor0[address(msg.sender)].field_0 <= -1
                        stor0[address(msg.sender)].field_248 = 128
                        require totalSupply <= -1
                    else:
                        require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        stor0[address(msg.sender)].field_0 = 128
                        require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if stor0[address(msg.sender)].field_0 < arg2:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require stor0[address(msg.sender)].field_0 >= arg2
            stor0[address(msg.sender)].field_0 -= arg2
            require stor0[arg1].field_0 <= -arg2 - 1
            stor0[address(arg1)].field_0 = arg2 + stor0[arg1].field_0
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    if Mask(1, 255, stor0[address(arg1)].field_0):
        require stor0[address(arg1)].field_0 <= -1
        if arg3 > stor0[address(arg1)].field_0:
            return 0
    else:
        require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
        if eth.balance(arg1) >= 10^17:
            if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                require stor0[address(arg1)].field_0 <= -778
                if arg3 > stor0[address(arg1)].field_0 + 777:
                    return 0
            else:
                require stor0[address(arg1)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                if arg3 > -totalSupply + stor0[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    return 0
        else:
            if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                require stor0[address(arg1)].field_0 <= -1
                if arg3 > stor0[address(arg1)].field_0:
                    return 0
            else:
                require stor0[address(arg1)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                if arg3 > -totalSupply + stor0[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    return 0
    if not Mask(1, 255, stor0[address(arg1)].field_0):
        if arg3 > stor0[address(arg1)].field_0:
            if Mask(1, 255, stor0[address(arg1)].field_0):
                require arg3 >= stor0[address(arg1)].field_0
                require arg3 - stor0[address(arg1)].field_0 <= 0
                require stor0[address(arg1)].field_0 <= -1
                stor0[address(arg1)].field_248 = 128
                require totalSupply <= -1
            else:
                require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
                require arg3 >= stor0[address(arg1)].field_0
                if eth.balance(arg1) >= 10^17:
                    if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        require arg3 - stor0[address(arg1)].field_0 <= 777
                        require stor0[address(arg1)].field_0 <= -778
                        stor0[address(arg1)].field_0 = 128
                        require totalSupply <= -778
                        totalSupply += 777
                    else:
                        require arg3 - stor0[address(arg1)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require stor0[address(arg1)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        stor0[address(arg1)].field_0 = 128
                        require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                else:
                    if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        require arg3 - stor0[address(arg1)].field_0 <= 0
                        require stor0[address(arg1)].field_0 <= -1
                        stor0[address(arg1)].field_248 = 128
                        require totalSupply <= -1
                    else:
                        require arg3 - stor0[address(arg1)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require stor0[address(arg1)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        stor0[address(arg1)].field_0 = 128
                        require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                        totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if stor0[address(arg1)].field_0 < arg3:
        return 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > 0:
        if arg1 != arg2:
            require stor0[address(arg1)].field_0 >= arg3
            stor0[address(arg1)].field_0 -= arg3
            require stor0[arg2].field_0 <= -arg3 - 1
            stor0[address(arg2)].field_0 = arg3 + stor0[arg2].field_0
            emit Transfer(arg3, arg1, arg2);
    return 1
}

function airDrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _254 = mem[(32 * idx) + 128]
        mem[0] = msg.sender
        mem[32] = 0
        if Mask(1, 255, stor0[address(msg.sender)].field_0):
            require stor0[address(msg.sender)].field_0 <= -1
            if arg2 <= stor0[address(msg.sender)].field_0:
                if not Mask(1, 255, stor0[address(msg.sender)].field_0):
                    if arg2 > stor0[address(msg.sender)].field_0:
                        if Mask(1, 255, stor0[address(msg.sender)].field_0):
                            require arg2 >= stor0[address(msg.sender)].field_0
                            require arg2 - stor0[address(msg.sender)].field_0 <= 0
                            require stor0[address(msg.sender)].field_0 <= -1
                            stor0[address(msg.sender)].field_248 = 128
                            require totalSupply <= -1
                        else:
                            require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
                            require arg2 >= stor0[address(msg.sender)].field_0
                            if eth.balance(msg.sender) >= 10^17:
                                if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    require arg2 - stor0[address(msg.sender)].field_0 <= 777
                                    require stor0[address(msg.sender)].field_0 <= -778
                                    stor0[address(msg.sender)].field_0 = 128
                                    require totalSupply <= -778
                                    totalSupply += 777
                                else:
                                    require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                    stor0[address(msg.sender)].field_0 = 128
                                    require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                    totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            else:
                                if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                    require stor0[address(msg.sender)].field_0 <= -1
                                    stor0[address(msg.sender)].field_248 = 128
                                    require totalSupply <= -1
                                else:
                                    require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                    stor0[address(msg.sender)].field_0 = 128
                                    require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                    totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[0] = msg.sender
                mem[32] = 0
                if stor0[address(msg.sender)].field_0 >= arg2:
                    if arg2 > 0:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            require stor0[address(msg.sender)].field_0 >= arg2
                            stor0[address(msg.sender)].field_0 -= arg2
                            require stor0[mem[(32 * idx) + 140 len 20]].field_0 <= -arg2 - 1
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 0
                            stor0[address(mem[(32 * idx) + 128])].field_0 = arg2 + stor0[mem[(32 * idx) + 140 len 20]].field_0
                            mem[(32 * arg1.length) + 128] = arg2
                            emit Transfer(arg2, msg.sender, address(_254));
        else:
            require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
            if eth.balance(msg.sender) >= 10^17:
                if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    require stor0[address(msg.sender)].field_0 <= -778
                    if arg2 <= stor0[address(msg.sender)].field_0 + 777:
                        if not Mask(1, 255, stor0[address(msg.sender)].field_0):
                            if arg2 > stor0[address(msg.sender)].field_0:
                                if Mask(1, 255, stor0[address(msg.sender)].field_0):
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                    require stor0[address(msg.sender)].field_0 <= -1
                                    stor0[address(msg.sender)].field_248 = 128
                                    require totalSupply <= -1
                                else:
                                    require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    if eth.balance(msg.sender) >= 10^17:
                                        if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 777
                                            require stor0[address(msg.sender)].field_0 <= -778
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= -778
                                            totalSupply += 777
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    else:
                                        if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                            require stor0[address(msg.sender)].field_0 <= -1
                                            stor0[address(msg.sender)].field_248 = 128
                                            require totalSupply <= -1
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = msg.sender
                        mem[32] = 0
                        if stor0[address(msg.sender)].field_0 >= arg2:
                            if arg2 > 0:
                                if mem[(32 * idx) + 140 len 20] != msg.sender:
                                    require stor0[address(msg.sender)].field_0 >= arg2
                                    stor0[address(msg.sender)].field_0 -= arg2
                                    require stor0[mem[(32 * idx) + 140 len 20]].field_0 <= -arg2 - 1
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 0
                                    stor0[address(mem[(32 * idx) + 128])].field_0 = arg2 + stor0[mem[(32 * idx) + 140 len 20]].field_0
                                    mem[(32 * arg1.length) + 128] = arg2
                                    emit Transfer(arg2, msg.sender, address(_254));
                else:
                    require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                    if arg2 <= -totalSupply + stor0[address(msg.sender)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        if not Mask(1, 255, stor0[address(msg.sender)].field_0):
                            if arg2 > stor0[address(msg.sender)].field_0:
                                if Mask(1, 255, stor0[address(msg.sender)].field_0):
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                    require stor0[address(msg.sender)].field_0 <= -1
                                    stor0[address(msg.sender)].field_248 = 128
                                    require totalSupply <= -1
                                else:
                                    require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    if eth.balance(msg.sender) >= 10^17:
                                        if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 777
                                            require stor0[address(msg.sender)].field_0 <= -778
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= -778
                                            totalSupply += 777
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    else:
                                        if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                            require stor0[address(msg.sender)].field_0 <= -1
                                            stor0[address(msg.sender)].field_248 = 128
                                            require totalSupply <= -1
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = msg.sender
                        mem[32] = 0
                        if stor0[address(msg.sender)].field_0 >= arg2:
                            if arg2 > 0:
                                if mem[(32 * idx) + 140 len 20] != msg.sender:
                                    require stor0[address(msg.sender)].field_0 >= arg2
                                    stor0[address(msg.sender)].field_0 -= arg2
                                    require stor0[mem[(32 * idx) + 140 len 20]].field_0 <= -arg2 - 1
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 0
                                    stor0[address(mem[(32 * idx) + 128])].field_0 = arg2 + stor0[mem[(32 * idx) + 140 len 20]].field_0
                                    mem[(32 * arg1.length) + 128] = arg2
                                    emit Transfer(arg2, msg.sender, address(_254));
            else:
                if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    require stor0[address(msg.sender)].field_0 <= -1
                    if arg2 <= stor0[address(msg.sender)].field_0:
                        if not Mask(1, 255, stor0[address(msg.sender)].field_0):
                            if arg2 > stor0[address(msg.sender)].field_0:
                                if Mask(1, 255, stor0[address(msg.sender)].field_0):
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                    require stor0[address(msg.sender)].field_0 <= -1
                                    stor0[address(msg.sender)].field_248 = 128
                                    require totalSupply <= -1
                                else:
                                    require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    if eth.balance(msg.sender) >= 10^17:
                                        if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 777
                                            require stor0[address(msg.sender)].field_0 <= -778
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= -778
                                            totalSupply += 777
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    else:
                                        if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                            require stor0[address(msg.sender)].field_0 <= -1
                                            stor0[address(msg.sender)].field_248 = 128
                                            require totalSupply <= -1
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = msg.sender
                        mem[32] = 0
                        if stor0[address(msg.sender)].field_0 >= arg2:
                            if arg2 > 0:
                                if mem[(32 * idx) + 140 len 20] != msg.sender:
                                    require stor0[address(msg.sender)].field_0 >= arg2
                                    stor0[address(msg.sender)].field_0 -= arg2
                                    require stor0[mem[(32 * idx) + 140 len 20]].field_0 <= -arg2 - 1
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 0
                                    stor0[address(mem[(32 * idx) + 128])].field_0 = arg2 + stor0[mem[(32 * idx) + 140 len 20]].field_0
                                    mem[(32 * arg1.length) + 128] = arg2
                                    emit Transfer(arg2, msg.sender, address(_254));
                else:
                    require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                    if arg2 <= -totalSupply + stor0[address(msg.sender)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        if not Mask(1, 255, stor0[address(msg.sender)].field_0):
                            if arg2 > stor0[address(msg.sender)].field_0:
                                if Mask(1, 255, stor0[address(msg.sender)].field_0):
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                    require stor0[address(msg.sender)].field_0 <= -1
                                    stor0[address(msg.sender)].field_248 = 128
                                    require totalSupply <= -1
                                else:
                                    require 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff >= totalSupply
                                    require arg2 >= stor0[address(msg.sender)].field_0
                                    if eth.balance(msg.sender) >= 10^17:
                                        if 777 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 777
                                            require stor0[address(msg.sender)].field_0 <= -778
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= -778
                                            totalSupply += 777
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    else:
                                        if 0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= 0
                                            require stor0[address(msg.sender)].field_0 <= -1
                                            stor0[address(msg.sender)].field_248 = 128
                                            require totalSupply <= -1
                                        else:
                                            require arg2 - stor0[address(msg.sender)].field_0 <= -totalSupply + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            require stor0[address(msg.sender)].field_0 <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            stor0[address(msg.sender)].field_0 = 128
                                            require totalSupply <= totalSupply - 0x8000000000000000000000000000000000000000000000000000000000000000
                                            totalSupply = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = msg.sender
                        mem[32] = 0
                        if stor0[address(msg.sender)].field_0 >= arg2:
                            if arg2 > 0:
                                if mem[(32 * idx) + 140 len 20] != msg.sender:
                                    require stor0[address(msg.sender)].field_0 >= arg2
                                    stor0[address(msg.sender)].field_0 -= arg2
                                    require stor0[mem[(32 * idx) + 140 len 20]].field_0 <= -arg2 - 1
                                    mem[0] = mem[(32 * idx) + 140 len 20]
                                    mem[32] = 0
                                    stor0[address(mem[(32 * idx) + 128])].field_0 = arg2 + stor0[mem[(32 * idx) + 140 len 20]].field_0
                                    mem[(32 * arg1.length) + 128] = arg2
                                    emit Transfer(arg2, msg.sender, address(_254));
        idx = idx + 1
        continue 
}



}
