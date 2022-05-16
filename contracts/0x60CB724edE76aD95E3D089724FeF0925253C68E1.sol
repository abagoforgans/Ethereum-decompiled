contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint8 stor4; offset 24
uint32 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint256 stor12;
mapping of struct stor14;

function _fallback() payable {
    stor4.field_0 % 16777216 = 200000
    uint8(stor4.field_24) = 0
    require not msg.value
    stor0 = msg.sender
    stor3 = code.data[5342 len 32]
    stor8 = 0
    stor7 = 0
    uint256(stor12.field_0) = uint256(stor12.field_0) and -4294902016
    idx = 0
    while idx < stor7:
        mem[0] = idx
        mem[32] = 14
        stor14[idx].field_0 = 0
        stor14[idx].field_256 = 0
        idx = idx + 1
        continue 
    stor7 = 0
    require stor8 + 1 >= stor8
    stor8++
    stor9 = block.timestamp
    stor10 = eth.balance(this.address)
    uint8(stor12.field_8) = 0
    if bool(uint8(stor12.field_16)) or False:
        stor14[stor7].field_0 = stor5
        stor14[stor7].field_256 = stor6
        require stor7 + 1 >= stor7
        stor7++
        uint8(stor12.field_16) = 0
        emit LOG_PlayerBet(stor5, stor6, stor8, stor10, stor9);
    emit LOG_NewTurn(stor8, stor9, stor10);
    return code.data[656 len 4686]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 stor2;
uint256 stor3;
uint32 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint256 stor13;
mapping of struct stor14;
uint256 stor15;

function stopContract() {
    return bool(uint8(stor12.field_0))
}

function stopBet() {
    return bool(uint8(stor12.field_8))
}

function owner() {
    return owner
}

function killContract() {
    require owner == msg.sender
    selfdestruct(owner)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function resetState() {
    require owner == msg.sender
    uint8(stor12.field_8) = 0
}

function destroyContract() {
    require owner == msg.sender
    uint8(stor12.field_0) = 1
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining wei
    require ext_call.success
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    stor15 = s
    uint8(stor12.field_24) = 1
    emit LOG_Random(s);
}

function closeTurnByHand(uint256 arg1) {
    require owner == msg.sender
    require arg1 == stor8
    require eth.balance(this.address)
    uint8(stor12.field_8) = 1
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining wei
    require ext_call.success
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 'URL', stor4
    require ext_call.success
    if ext_call.return_data[0] <= (stor4 * block.gasprice) + 10^18:
        require ext_code.size(address(stor2))
        call address(stor2).query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 128, 192, stor4, 3, 'URL' << 232, 91, 'https://www.random.org/integers/', '?num=1&min=1&max=1000000&col=1&b', 'ase=10&format=plain&rnd=new' >> 256, Mask(216, -512, 'https://www.random.org/integers/', '?num=1&min=1&max=1000000&col=1&b', 'ase=10&format=plain&rnd=new') << 512
        require ext_call.success
}

function bet() payable {
    require not uint8(stor12.field_0)
    require not uint8(stor12.field_8)
    require msg.value <= stor3
    stor10 = eth.balance(this.address)
    if eth.balance(this.address) > stor3:
        stor10 = stor3
    stor11 = stor10
    if eth.balance(this.address) < stor3:
        stor14[stor7].field_0 = msg.sender
        stor14[stor7].field_256 = msg.value
        require stor7 + 1 >= stor7
        stor7++
        emit LOG_PlayerBet(msg.sender, msg.value, stor8, stor10, stor9);
    else:
        require stor3 <= eth.balance(this.address)
        if eth.balance(this.address) - stor3 <= 0:
            uint8(stor12.field_8) = 1
            stor14[stor7].field_0 = msg.sender
            stor14[stor7].field_256 = msg.value
            require stor7 + 1 >= stor7
            stor7++
            emit LOG_PlayerBet(msg.sender, msg.value, stor8, stor10, stor9);
        else:
            require eth.balance(this.address) - stor3 <= msg.value
            stor5 = msg.sender
            stor6 = eth.balance(this.address) - stor3
            uint8(stor12.field_16) = 1
            uint8(stor12.field_8) = 1
            stor14[stor7].field_0 = msg.sender
            stor14[stor7].field_256 = msg.value - eth.balance(this.address) + stor3
            require stor7 + 1 >= stor7
            stor7++
            emit LOG_PlayerBet(msg.sender, msg.value - eth.balance(this.address) + stor3, stor8, stor10, stor9);
    if uint8(stor12.field_8):
        if not stor1:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        else:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
        require ext_code.size(stor1)
        call stor1.getAddress() with:
             gas gas_remaining wei
        require ext_call.success
        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getPrice(string arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 'URL', stor4
        require ext_call.success
        if ext_call.return_data[0] <= (stor4 * block.gasprice) + 10^18:
            require ext_code.size(address(stor2))
            call address(stor2).query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 0, 128, 192, stor4, 3, 'URL' << 232, 91, 'https://www.random.org/integers/', '?num=1&min=1&max=1000000&col=1&b', 'ase=10&format=plain&rnd=new' >> 256, Mask(216, -512, 'https://www.random.org/integers/', '?num=1&min=1&max=1000000&col=1&b', 'ase=10&format=plain&rnd=new') << 512
            require ext_call.success
}

function _fallback() payable {
    require not uint8(stor12.field_0)
    require not uint8(stor12.field_8)
    require msg.value <= stor3
    stor10 = eth.balance(this.address)
    if eth.balance(this.address) > stor3:
        stor10 = stor3
    stor11 = stor10
    if eth.balance(this.address) < stor3:
        stor14[stor7].field_0 = msg.sender
        stor14[stor7].field_256 = msg.value
        require stor7 + 1 >= stor7
        stor7++
        emit LOG_PlayerBet(msg.sender, msg.value, stor8, stor10, stor9);
    else:
        require stor3 <= eth.balance(this.address)
        if eth.balance(this.address) - stor3 <= 0:
            uint8(stor12.field_8) = 1
            stor14[stor7].field_0 = msg.sender
            stor14[stor7].field_256 = msg.value
            require stor7 + 1 >= stor7
            stor7++
            emit LOG_PlayerBet(msg.sender, msg.value, stor8, stor10, stor9);
        else:
            require eth.balance(this.address) - stor3 <= msg.value
            stor5 = msg.sender
            stor6 = eth.balance(this.address) - stor3
            uint8(stor12.field_16) = 1
            uint8(stor12.field_8) = 1
            stor14[stor7].field_0 = msg.sender
            stor14[stor7].field_256 = msg.value - eth.balance(this.address) + stor3
            require stor7 + 1 >= stor7
            stor7++
            emit LOG_PlayerBet(msg.sender, msg.value - eth.balance(this.address) + stor3, stor8, stor10, stor9);
    if uint8(stor12.field_8):
        if not stor1:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        else:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
        require ext_code.size(stor1)
        call stor1.getAddress() with:
             gas gas_remaining wei
        require ext_call.success
        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getPrice(string arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 'URL', stor4
        require ext_call.success
        if ext_call.return_data[0] <= (stor4 * block.gasprice) + 10^18:
            require ext_code.size(address(stor2))
            call address(stor2).query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 0, 128, 192, stor4, 3, 'URL' << 232, 91, 'https://www.random.org/integers/', '?num=1&min=1&max=1000000&col=1&b', 'ase=10&format=plain&rnd=new' >> 256, Mask(216, -512, 'https://www.random.org/integers/', '?num=1&min=1&max=1000000&col=1&b', 'ase=10&format=plain&rnd=new') << 512
            require ext_call.success
}

function afterCallBack() {
    require owner == msg.sender
    require uint8(stor12.field_24)
    uint8(stor12.field_24) = 0
    stor10 = eth.balance(this.address)
    if eth.balance(this.address) > stor3:
        stor10 = stor3
    if not stor10:
        stor13 = 0
    else:
        require stor15 * stor10 / stor10 == stor15
        stor13 = stor15 * stor10 / 10^6
    idx = 0
    s = 0
    while idx < stor7:
        mem[0] = idx
        mem[32] = 14
        require stor14[idx].field_256 + s >= s
        if stor14[idx].field_256 + s < stor13:
            idx = idx + 1
            s = stor14[idx].field_256 + s
            continue 
        if not stor10:
            if not stor10:
                emit LOG_LuckyPLayer(stor14[idx].field_0, stor11, stor8);
                call stor14[idx].field_0 with:
                     gas 2300 wei
                require ext_call.success
                call owner with:
                     gas 2300 wei
            else:
                require stor10 / stor10 == 1
                emit LOG_LuckyPLayer(stor14[idx].field_0, stor11, stor8);
                call stor14[idx].field_0 with:
                     gas 2300 wei
                require ext_call.success
                call owner with:
                   value stor10 / 100 wei
                     gas 2300 * is_zero(value) wei
        else:
            require 99 * stor10 / stor10 == 99
            if not stor10:
                emit LOG_LuckyPLayer(stor14[idx].field_0, stor11, stor8);
                call stor14[idx].field_0 with:
                   value 99 * stor10 / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call owner with:
                     gas 2300 wei
            else:
                require stor10 / stor10 == 1
                emit LOG_LuckyPLayer(stor14[idx].field_0, stor11, stor8);
                call stor14[idx].field_0 with:
                   value 99 * stor10 / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call owner with:
                   value stor10 / 100 wei
                     gas 2300 * is_zero(value) wei
        idx = 0
        while idx < stor7:
            mem[0] = idx
            mem[32] = 14
            stor14[idx].field_0 = 0
            stor14[idx].field_256 = 0
            idx = idx + 1
            continue 
        stor7 = 0
        require stor8 + 1 >= stor8
        stor8++
        stor9 = block.timestamp
        stor10 = eth.balance(this.address)
        uint8(stor12.field_8) = 0
        if bool(uint8(stor12.field_16)) or False:
            stor14[stor7].field_0 = stor5
            stor14[stor7].field_256 = stor6
            require stor7 + 1 >= stor7
            stor7++
            uint8(stor12.field_16) = 0
            emit LOG_PlayerBet(stor5, stor6, stor8, stor10, stor9);
        emit LOG_NewTurn(stor8, stor9, stor10);
    if not stor10:
        if not stor10:
            emit LOG_LuckyPLayer(stor14[0].field_0, stor11, stor8);
            call stor14[0].field_0 with:
                 gas 2300 wei
            require ext_call.success
            call owner with:
                 gas 2300 wei
        else:
            require stor10 / stor10 == 1
            emit LOG_LuckyPLayer(stor14[0].field_0, stor11, stor8);
            call stor14[0].field_0 with:
                 gas 2300 wei
            require ext_call.success
            call owner with:
               value stor10 / 100 wei
                 gas 2300 * is_zero(value) wei
    else:
        require 99 * stor10 / stor10 == 99
        if not stor10:
            emit LOG_LuckyPLayer(stor14[0].field_0, stor11, stor8);
            call stor14[0].field_0 with:
               value 99 * stor10 / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call owner with:
                 gas 2300 wei
        else:
            require stor10 / stor10 == 1
            emit LOG_LuckyPLayer(stor14[0].field_0, stor11, stor8);
            call stor14[0].field_0 with:
               value 99 * stor10 / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call owner with:
               value stor10 / 100 wei
                 gas 2300 * is_zero(value) wei
    idx = 0
    while idx < stor7:
        mem[0] = idx
        mem[32] = 14
        stor14[idx].field_0 = 0
        stor14[idx].field_256 = 0
        idx = idx + 1
        continue 
    stor7 = 0
    require stor8 + 1 >= stor8
    stor8++
    stor9 = block.timestamp
    stor10 = eth.balance(this.address)
    uint8(stor12.field_8) = 0
    if bool(uint8(stor12.field_16)) or False:
        stor14[stor7].field_0 = stor5
        stor14[stor7].field_256 = stor6
        require stor7 + 1 >= stor7
        stor7++
        uint8(stor12.field_16) = 0
        emit LOG_PlayerBet(stor5, stor6, stor8, stor10, stor9);
    emit LOG_NewTurn(stor8, stor9, stor10);
}



}
