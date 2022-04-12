contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = 2 * 10^10
    require not msg.value
    stor2 = msg.sender
    return code.data[107 len 18112]
}



// =====================  Runtime code  =====================


#
#  - query2(uint256 arg1, string arg2, string arg3, string arg4)
#
mapping of uint256 stor0;
mapping of uint8 cb;
address stor2;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
uint256 baseprice;
mapping of uint256 stor7;
mapping of uint256 stor8;
array of uint256 stor9;
array of uint256 randomDS_getSessionPubKeyHash;

function baseprice() {
    return baseprice
}

function randomDS_getSessionPubKeyHash() {
    require randomDS_getSessionPubKeyHash.length
    require sha3(stor0[address(msg.sender)]) % randomDS_getSessionPubKeyHash.length < randomDS_getSessionPubKeyHash.length
    return randomDS_getSessionPubKeyHash[sha3(stor0[address(msg.sender)]) % randomDS_getSessionPubKeyHash.length]
}

function cbAddresses(address arg1) {
    return Mask(8, 248, cb[arg1])
}

function randomDS_sessionPubKeysHash(uint256 arg1) {
    require arg1 < randomDS_getSessionPubKeyHash.length
    return randomDS_getSessionPubKeyHash[arg1]
}

function _fallback() {
    require msg.sender == stor2
}

function setCustomGasPrice(uint256 arg1) {
    stor5[address(msg.sender)] = arg1
}

function setProofType(bytes1 arg1) {
    stor4[address(msg.sender)] = uint8(arg1)
}

function changeAdmin(address arg1) {
    require msg.sender == stor2
    stor2 = arg1
}

function setGasPrice(uint256 arg1) {
    require msg.sender == stor2
    stor3 = arg1
}

function removeCbAddress(address arg1) {
    require msg.sender == stor2
    cb[address(arg1)] = 0
}

function cbAddress() {
    if not Mask(8, 248, cb[tx.origin]):
        return 0
    return tx.origin
}

function addCbAddress(address arg1, bytes1 arg2) {
    require msg.sender == stor2
    cb[address(arg1)] = uint8(arg2)
}

function addCbAddress(address arg1, bytes1 arg2, bytes arg3) {
    require msg.sender == stor2
    cb[address(arg1)] = uint8(arg2)
}

function withdrawFunds(address arg1) {
    require msg.sender == stor2
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setBasePrice(uint256 arg1) {
    require msg.sender == stor2
    baseprice = arg1
    idx = 0
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 7
        stor7[stor9[idx]] = arg1 * stor8[stor9[idx]]
        idx = idx + 1
        continue 
}

function setBasePrice(uint256 arg1, bytes arg2) {
    require msg.sender == stor2
    baseprice = arg1
    idx = 0
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 7
        stor7[stor9[idx]] = arg1 * stor8[stor9[idx]]
        idx = idx + 1
        continue 
}

function multisetCustomGasPrice(uint256[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor2
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function multisetProofType(uint256[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor2
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = mem[(32 * idx) + 159 len 1]
        idx = idx + 1
        continue 
}

function addDSource(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    require stor9.length < stor9.length
    stor9[stor9.length] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1])
    stor8[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] = arg2
}

function randomDS_updateSessionPubKeysHash(bytes32[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor2
    randomDS_getSessionPubKeyHash.length = 0
    if not randomDS_getSessionPubKeyHash.length <= 0:
        idx = 0
        while randomDS_getSessionPubKeyHash.length > idx:
            randomDS_getSessionPubKeyHash[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg1.length:
        randomDS_getSessionPubKeyHash.length++
        if not randomDS_getSessionPubKeyHash.length <= randomDS_getSessionPubKeyHash.length + 1:
            s = sha3(10) + randomDS_getSessionPubKeyHash.length + 1
            while sha3(10) + randomDS_getSessionPubKeyHash.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 10
        require idx < arg1.length
        randomDS_getSessionPubKeyHash[randomDS_getSessionPubKeyHash.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function addDSource(string arg1, bytes1 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = Mask(8, 248, arg2)
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    require stor9.length < stor9.length
    stor9[stor9.length] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1])
    stor8[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] = arg3
}

function getPrice(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if not stor0[address(msg.sender)]:
        if stor5[address(msg.sender)] <= stor3:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    return 0
            else:
                if tx.origin != tx.origin:
                    return 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = Mask(8, 248, stor4[address(msg.sender)])
    if stor5[address(msg.sender)]:
        mem[ceil32(arg1.length) + 128] = stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
    else:
        mem[ceil32(arg1.length) + 128] = stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] + (200000 * stor3)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getPrice(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if arg2 <= 200000:
        if not stor0[address(msg.sender)]:
            if stor5[address(msg.sender)] <= stor3:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        return 0
                else:
                    if tx.origin != tx.origin:
                        return 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = Mask(8, 248, stor4[address(msg.sender)])
    if stor5[address(msg.sender)]:
        mem[ceil32(arg1.length) + 128] = stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] + (arg2 * stor5[address(msg.sender)])
    else:
        mem[ceil32(arg1.length) + 128] = stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] + (arg2 * stor3)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function queryN(uint256 arg1, string arg2, bytes arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg4 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg4 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query1(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg4 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg4 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function queryN_withGasLimit(uint256 arg1, string arg2, bytes arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg4 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query1_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg4 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg4 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg4 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg4 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function queryN(string arg1, bytes arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor0[address(msg.sender)]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor5[address(msg.sender)] > stor3:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
            else:
                if tx.origin != tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + arg1.length + -ceil32(arg1.length) + 32],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor0[address(msg.sender)]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor5[address(msg.sender)] > stor3:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
            else:
                if tx.origin != tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + arg1.length + -ceil32(arg1.length) + 32],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query1(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor0[address(msg.sender)]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor5[address(msg.sender)] > stor3:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
            else:
                if tx.origin != tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
    require 0 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + arg1.length + -ceil32(arg1.length) + 32],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function queryN(uint256 arg1, string arg2, bytes arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor0[address(msg.sender)]:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor5[address(msg.sender)] > stor3:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
            else:
                if tx.origin != tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit LogN(address rg1, bytes32 rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query(uint256 arg1, string arg2, string arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor0[address(msg.sender)]:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor5[address(msg.sender)] > stor3:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
            else:
                if tx.origin != tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query1(uint256 arg1, string arg2, string arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor0[address(msg.sender)]:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor5[address(msg.sender)] > stor3:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
            else:
                if tx.origin != tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require 200000 <= block.gas_limit
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit Log1(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, uint256 rg6, bytes1 rg7, uint256 rg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor4[address(msg.sender)]),
                      stor5[address(msg.sender)],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function sub_dba8fc61(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg5 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= block.gas_limit
    require Mask(160, 96, arg4) >> 96 == msg.sender
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x5051eab4: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, arg2.length + 320, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit 0x5051eab4: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, arg2.length + 320, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x5051eab4: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, floor32(arg2.length) + 352, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
            emit 0x5051eab4: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, floor32(arg2.length) + 352, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96]
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function sub_f84072a5(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg5 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                         gas 2300 * is_zero(value) wei
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                             gas 2300 * is_zero(value) wei
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
    require arg1 <= block.timestamp + (1440 * 24 * 3600)
    require arg5 <= block.gas_limit
    require Mask(160, 96, arg4) >> 96 == msg.sender
    stor0[address(msg.sender)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x90552fb8: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, arg2.length + 320, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit 0x90552fb8: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, arg2.length + 320, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x90552fb8: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, floor32(arg2.length) + 352, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
            emit 0x90552fb8: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 288, floor32(arg2.length) + 352, Mask(160, 96, arg4) >> 96, uint32(arg4), 0, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96]
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function sub_ad44d0ca(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if arg6 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) wei
                     gas 2300 * is_zero(value) wei
        require arg1 <= block.timestamp + (1440 * 24 * 3600)
        require arg6 <= block.gas_limit
        require Mask(160, 96, arg5) >> 96 == msg.sender
        stor0[address(msg.sender)]++
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 408 len 8] = 0
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 404 len 4] = uint32(arg5)
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len 20] = Mask(160, 96, arg5) >> 96
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg6
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = Mask(8, 248, stor4[address(msg.sender)])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = stor5[address(msg.sender)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 320
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg2.length
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 352
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 384
                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                else:
                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 416
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 384
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 416
                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                else:
                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 448
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) wei
                         gas 2300 * is_zero(value) wei
            require arg1 <= block.timestamp + (1440 * 24 * 3600)
            require arg6 <= block.gas_limit
            require Mask(160, 96, arg5) >> 96 == msg.sender
            stor0[address(msg.sender)]++
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 408 len 8] = 0
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 404 len 4] = uint32(arg5)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len 20] = Mask(160, 96, arg5) >> 96
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg6
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = Mask(8, 248, stor4[address(msg.sender)])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = stor5[address(msg.sender)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 320
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg2.length
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 352
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 384
                    mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                    mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                    else:
                        mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                else:
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 416
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                    else:
                        mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 384
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 416
                    mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                    mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                    else:
                        mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                else:
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 448
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                    else:
                        mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
                        emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) wei
                             gas 2300 * is_zero(value) wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg6 <= block.gas_limit
                require Mask(160, 96, arg5) >> 96 == msg.sender
                stor0[address(msg.sender)]++
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 408 len 8] = 0
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 404 len 4] = uint32(arg5)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len 20] = Mask(160, 96, arg5) >> 96
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg6
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = Mask(8, 248, stor4[address(msg.sender)])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = stor5[address(msg.sender)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 320
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg2.length
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 352
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 384
                        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                        else:
                            mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 416
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                        else:
                            mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 384
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 416
                        mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                        mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                        else:
                            mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 448
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                        else:
                            mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
                            emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg6 <= block.gas_limit
                        require Mask(160, 96, arg5) >> 96 == msg.sender
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg3.length
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, arg3.length + arg2.length + 384, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, arg3.length + arg2.length + 384, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, floor32(arg3.length) + arg2.length + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, floor32(arg3.length) + arg2.length + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg3.length
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, arg3.length + floor32(arg2.length) + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 96]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, arg3.length + floor32(arg2.length) + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 128]
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, floor32(arg3.length) + floor32(arg2.length) + 448, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 128]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, floor32(arg3.length) + floor32(arg2.length) + 448, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 160]
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg6 <= block.gas_limit
                        require Mask(160, 96, arg5) >> 96 == msg.sender
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 408 len 8] = 0
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 404 len 4] = uint32(arg5)
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len 20] = Mask(160, 96, arg5) >> 96
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg6
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = Mask(8, 248, stor4[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = stor5[address(msg.sender)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 320
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg2.length
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 352
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 384
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 416
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 384
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 416
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 448
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg6 <= block.gas_limit
                        require Mask(160, 96, arg5) >> 96 == msg.sender
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg3.length
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, arg3.length + arg2.length + 384, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, arg3.length + arg2.length + 384, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, floor32(arg3.length) + arg2.length + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, arg2.length + 352, floor32(arg3.length) + arg2.length + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg3.length
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, arg3.length + floor32(arg2.length) + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 96]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, arg3.length + floor32(arg2.length) + 416, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 128]
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, floor32(arg3.length) + floor32(arg2.length) + 448, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg4.length + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 128]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, 320, floor32(arg2.length) + 384, floor32(arg3.length) + floor32(arg2.length) + 448, Mask(160, 96, arg5) >> 96, uint32(arg5), 0, arg6, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 160]
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg6 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg6 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg6 <= block.gas_limit
                        require Mask(160, 96, arg5) >> 96 == msg.sender
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 408 len 8] = 0
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 404 len 4] = uint32(arg5)
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len 20] = Mask(160, 96, arg5) >> 96
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg6
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = Mask(8, 248, stor4[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = stor5[address(msg.sender)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 320
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg2.length
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 352
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 384
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 416
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 320], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 384
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 416
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 448
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
                                    emit 0xcc57f89a: msg.sender, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 352], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 608 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query2(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if arg5 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                     gas 2300 * is_zero(value) wei
        require arg1 <= block.timestamp + (1440 * 24 * 3600)
        require arg5 <= block.gas_limit
        stor0[address(msg.sender)]++
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                else:
                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                else:
                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                         gas 2300 * is_zero(value) wei
            require arg1 <= block.timestamp + (1440 * 24 * 3600)
            require arg5 <= block.gas_limit
            stor0[address(msg.sender)]++
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                    mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                    mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                    else:
                        mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                    mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                    mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                    else:
                        mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                             gas 2300 * is_zero(value) wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg5 <= block.gas_limit
                stor0[address(msg.sender)]++
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                        else:
                            mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                        else:
                            mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                        mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                        mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                        else:
                            mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                        else:
                            mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                        else:
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                        else:
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query2_withGasLimit(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if arg5 > 200000:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                     gas 2300 * is_zero(value) wei
        require arg1 <= block.timestamp + (1440 * 24 * 3600)
        require arg5 <= block.gas_limit
        stor0[address(msg.sender)]++
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                else:
                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                else:
                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                              arg3.length,
                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                         gas 2300 * is_zero(value) wei
            require arg1 <= block.timestamp + (1440 * 24 * 3600)
            require arg5 <= block.gas_limit
            stor0[address(msg.sender)]++
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                    mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                    mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                    else:
                        mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                    mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                    mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                    else:
                        mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                else:
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                  mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                  Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                  arg3.length,
                                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                  mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
        else:
            if stor5[address(msg.sender)] > stor3:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                if stor5[address(msg.sender)]:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                    if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                        call msg.sender with:
                           value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                             gas 2300 * is_zero(value) wei
                require arg1 <= block.timestamp + (1440 * 24 * 3600)
                require arg5 <= block.gas_limit
                stor0[address(msg.sender)]++
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                        else:
                            mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                        else:
                            mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                        mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                        mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                        else:
                            mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                        mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                        else:
                            mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                            emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                      msg.sender,
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                      mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                      Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                      mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                      arg3.length,
                                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                      mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
            else:
                if not Mask(8, 248, cb[tx.origin]):
                    if tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                        else:
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                else:
                    if tx.origin != tx.origin:
                        require msg.value >= 0
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                        else:
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                            else:
                                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[address(msg.sender)]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor4[address(msg.sender)]), stor5[address(msg.sender)]);
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                        if stor5[address(msg.sender)]:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor5[address(msg.sender)])
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor5[address(msg.sender)]) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require msg.value >= stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] + (arg5 * stor3)
                            if msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) > 0:
                                call msg.sender with:
                                   value msg.value - stor7[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] - (arg5 * stor3) wei
                                     gas 2300 * is_zero(value) wei
                        require arg1 <= block.timestamp + (1440 * 24 * 3600)
                        require arg5 <= block.gas_limit
                        stor0[address(msg.sender)]++
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg5
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = stor5[address(msg.sender)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 288
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2.length
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2.length + 320
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + arg2.length + 352
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
                                mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + arg2.length + 384
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len 288],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 544 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = floor32(arg2.length) + 352
                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + floor32(arg2.length) + 384
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
                                mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + arg3.length + -ceil32(arg3.length) + 32],
                                else:
                                    mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = floor32(arg3.length) + floor32(arg2.length) + 416
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
                                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64],
                                else:
                                    mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                              msg.sender,
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                                              mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32],
                                              Mask((8 * arg2.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                              mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 224 len -(arg2.length % 32) + 320],
                                              arg3.length,
                                              Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                              mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}

function query2(string arg1, string arg2, string arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    if stor0[address(msg.sender)]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
        if stor5[address(msg.sender)]:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor3)
            if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                call msg.sender with:
                   value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                     gas 2300 * is_zero(value) wei
        require 0 <= block.timestamp + (1440 * 24 * 3600)
        require 200000 <= block.gas_limit
        stor0[address(msg.sender)]++
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 200000
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = stor5[address(msg.sender)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 288
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg1.length + 320
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + arg1.length + 352
                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                else:
                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + arg1.length + 384
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                else:
                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = floor32(arg1.length) + 352
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + floor32(arg1.length) + 384
                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                else:
                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
            else:
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + floor32(arg1.length) + 416
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = arg3.length
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                else:
                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                    emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                              msg.sender,
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                              mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                              Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                              mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
    else:
        if stor5[address(msg.sender)] > stor3:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
            if stor5[address(msg.sender)]:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor3)
                if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                    call msg.sender with:
                       value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                         gas 2300 * is_zero(value) wei
            require 0 <= block.timestamp + (1440 * 24 * 3600)
            require 200000 <= block.gas_limit
            stor0[address(msg.sender)]++
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 200000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = stor5[address(msg.sender)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 288
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg1.length
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg1.length + 320
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + arg1.length + 352
                    mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
                    mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                    else:
                        mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + arg1.length + 384
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = floor32(arg1.length) + 352
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + floor32(arg1.length) + 384
                    mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                    mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                    else:
                        mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + floor32(arg1.length) + 416
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = arg3.length
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                    else:
                        mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                        emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                  msg.sender,
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                  mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                  Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                  arg2.length,
                                  Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                  mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
        else:
            if not Mask(8, 248, cb[tx.origin]):
                if tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    require 0 <= block.timestamp + (1440 * 24 * 3600)
                    require 200000 <= block.gas_limit
                    stor0[address(msg.sender)]++
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    if not arg1.length % 32:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg2.length
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          arg2.length + arg1.length + 352,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + arg2.length + arg1.length + -ceil32(arg1.length) + 64],
                            else:
                                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          arg2.length + arg1.length + 352,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + arg2.length + arg1.length + -ceil32(arg1.length) + 96],
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          floor32(arg2.length) + arg1.length + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 96],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          floor32(arg2.length) + arg1.length + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 128],
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg2.length
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          arg2.length + floor32(arg1.length) + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 96],
                            else:
                                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          arg2.length + floor32(arg1.length) + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 128],
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = arg3.length
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          floor32(arg2.length) + floor32(arg1.length) + 416,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 128],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          floor32(arg2.length) + floor32(arg1.length) + 416,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 160],
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
                    require 0 <= block.timestamp + (1440 * 24 * 3600)
                    require 200000 <= block.gas_limit
                    stor0[address(msg.sender)]++
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 200000
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = stor5[address(msg.sender)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 288
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg1.length
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    if not arg1.length % 32:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg1.length + 320
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + arg1.length + 352
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                            else:
                                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + arg1.length + 384
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = floor32(arg1.length) + 352
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + floor32(arg1.length) + 384
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                            else:
                                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + floor32(arg1.length) + 416
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = arg3.length
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
            else:
                if tx.origin != tx.origin:
                    require msg.value >= 0
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    require 0 <= block.timestamp + (1440 * 24 * 3600)
                    require 200000 <= block.gas_limit
                    stor0[address(msg.sender)]++
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    if not arg1.length % 32:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg2.length
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          arg2.length + arg1.length + 352,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + arg2.length + arg1.length + -ceil32(arg1.length) + 64],
                            else:
                                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          arg2.length + arg1.length + 352,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + arg2.length + arg1.length + -ceil32(arg1.length) + 96],
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          floor32(arg2.length) + arg1.length + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 96],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          arg1.length + 320,
                                          floor32(arg2.length) + arg1.length + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 128],
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg2.length
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          arg2.length + floor32(arg1.length) + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 96],
                            else:
                                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          arg2.length + floor32(arg1.length) + 384,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 128],
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = arg3.length
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          floor32(arg2.length) + floor32(arg1.length) + 416,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 128],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          sha3(this.address, msg.sender, stor0[address(msg.sender)]),
                                          0,
                                          288,
                                          floor32(arg1.length) + 352,
                                          floor32(arg2.length) + floor32(arg1.length) + 416,
                                          200000,
                                          Mask(8, 248, stor4[address(msg.sender)]),
                                          stor5[address(msg.sender)],
                                          arg1.length,
                                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 160],
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = Mask(8, 248, stor4[address(msg.sender)])
                    if stor5[address(msg.sender)]:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor5[address(msg.sender)])
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor5[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value >= stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] + (200000 * stor3)
                        if msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) > 0:
                            call msg.sender with:
                               value msg.value - stor7[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] - (200000 * stor3) wei
                                 gas 2300 * is_zero(value) wei
                    require 0 <= block.timestamp + (1440 * 24 * 3600)
                    require 200000 <= block.gas_limit
                    stor0[address(msg.sender)]++
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = sha3(this.address, msg.sender, stor0[address(msg.sender)])
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 200000
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = Mask(8, 248, stor4[address(msg.sender)])
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = stor5[address(msg.sender)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 288
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg1.length
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    if not arg1.length % 32:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg1.length + 320
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + arg1.length + 352
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                            else:
                                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + arg1.length + 384
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len 288],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + arg1.length + 544 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = floor32(arg1.length) + 352
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + floor32(arg1.length) + 384
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
                            else:
                                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = floor32(arg2.length) + floor32(arg1.length) + 416
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = arg3.length
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
                            else:
                                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                                emit Log2(address rg1, bytes32 rg2, uint256 rg3, string rg4, string rg5, string rg6, uint256 rg7, bytes1 rg8, uint256 rg9):
                                          msg.sender,
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg1.length) - (arg1.length % 32)],
                                          mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32],
                                          Mask((8 * arg1.length % 32) - 248, 248, stor4[address(msg.sender)]),
                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 224 len -(arg1.length % 32) + 320],
                                          arg2.length,
                                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + floor32(arg1.length) + 576 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
    return sha3(this.address, msg.sender, stor0[address(msg.sender)])
}



}
