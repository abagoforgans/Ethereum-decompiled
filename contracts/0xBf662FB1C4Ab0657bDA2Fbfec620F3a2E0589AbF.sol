contract main {




// =====================  Runtime code  =====================


const ROLE_PAUSE_ADMIN = 'pauseAdmin'

const ROLE_ADMIN = ''


mapping of uint8 stor0;
uint8 stor1;
uint8 stor1; offset 8
address stor1; offset 16
address mainContractAddress;
uint256 crowdSaleDragonPrice;
uint256 soldDragons;
uint256 priceChanger;
uint256 timeToBorn;
uint256 contRefer50x50;
mapping of uint8 stor8;
mapping of uint8 stor99;

function sub_0dd66c75(?) {
    return bool(stor8[arg1])
}

function priceChanger() {
    return priceChanger
}

function timeToBorn() {
    return timeToBorn
}

function paused() {
    return bool(uint8(stor1.field_0))
}

function soldDragons() {
    return soldDragons
}

function contRefer50x50() {
    return contRefer50x50
}

function crowdSaleDragonPrice() {
    return crowdSaleDragonPrice
}

function mainContract() {
    return mainContractAddress
}

function setTimeToBorn(uint256 arg1) {
    require stor0[418296719726][address(msg.sender)]
    timeToBorn = arg1
}

function setPriceChanger(uint256 arg1) {
    require stor0[418296719726][address(msg.sender)]
    priceChanger = arg1
}

function changePrice(uint256 arg1) {
    require stor0[418296719726][address(msg.sender)]
    crowdSaleDragonPrice = arg1
}

function changeWallet(address arg1) {
    require stor0[418296719726][address(msg.sender)]
    address(stor1.field_16) = arg1
}

function unpause() {
    require stor0['pauseAdmin'][address(msg.sender)]
    require uint8(stor1.field_0)
    uint8(stor1.field_0) = 0
    emit Unpause()
}

function pause() {
    require stor0['pauseAdmin'][address(msg.sender)]
    require not uint8(stor1.field_0)
    uint8(stor1.field_0) = 1
    emit Pause()
}

function setRefer50x50(address arg1) {
    require stor0[418296719726][address(msg.sender)]
    require 50 > contRefer50x50
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    contRefer50x50++
}

function withdrawAllEther() {
    require stor0[418296719726][address(msg.sender)]
    require address(stor1.field_16)
    call address(stor1.field_16) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sendBonusEgg(address arg1, uint256 arg2) {
    require stor0['BountyAgent'][address(msg.sender)]
    idx = 1
    while idx <= arg2:
        mem[160] = 0x3f07618d00000000000000000000000000000000000000000000000000000000
        mem[164] = arg1
        mem[196] = timeToBorn + block.number
        mem[228] = 0
        mem[260] = 0
        mem[292] = 0
        mem[324] = 0
        require ext_code.size(mainContractAddress)
        call mainContractAddress.createDragon(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint240 arg6) with:
             gas gas_remaining wei
            args address(arg1), timeToBorn + block.number, 0, 0, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        soldDragons++
        crowdSaleDragonPrice += priceChanger
        idx = idx + 1
        continue 
}

function adminRemoveRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 192 len 5] = 418296719726
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[418296719726][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 192] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 192] = 0
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 0
    emit RoleRemoved(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function adminAddRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 0x61646d696e000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 192 len 5] = 418296719726
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[418296719726][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 192] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 192] = 0
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 1
    mem[ceil32(arg2.length) + 192] = arg1
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    if 0 < arg2.length:
        mem[ceil32(arg2.length) + 288] = mem[128]
        mem[ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit RoleAdded(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + 288 len arg2.length]));
}

function _fallback() payable {
    require not uint8(stor1.field_0)
    require not uint8(stor1.field_8)
    uint8(stor1.field_8) = 1
    require 100000 >= soldDragons
    require msg.value >= crowdSaleDragonPrice
    require ext_code.size(msg.sender) <= 0
    require crowdSaleDragonPrice
    if msg.value / crowdSaleDragonPrice <= 15:
        if msg.value - (msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice) > 0:
            call msg.sender with:
               value msg.value - (msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if 20 != calldata.size:
            call address(stor1.field_16) with:
               value msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 1
            while idx <= msg.value / crowdSaleDragonPrice:
                mem[96] = 0x3f07618d00000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = timeToBorn + block.number
                mem[164] = 0
                mem[196] = 0
                mem[228] = 0
                mem[260] = 0
                require ext_code.size(mainContractAddress)
                call mainContractAddress.createDragon(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint240 arg6) with:
                     gas gas_remaining wei
                    args msg.sender, timeToBorn + block.number, 0, 0, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                soldDragons++
                crowdSaleDragonPrice += priceChanger
                idx = idx + 1
                continue 
        else:
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            require mem[128 len 20] != msg.sender
            if not mem[128 len 20]:
                call address(stor1.field_16) with:
                   value msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not stor8[mem[128 len 20]]:
                    call mem[128 len 20] with:
                       value 3 * msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice / 10 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(stor1.field_16) with:
                       value (msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice) - (3 * msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice / 10) wei
                         gas 2300 * is_zero(value) wei
                else:
                    call mem[128 len 20] with:
                       value msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(stor1.field_16) with:
                       value (msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice) - (msg.value / crowdSaleDragonPrice * crowdSaleDragonPrice / 2) wei
                         gas 2300 * is_zero(value) wei
            idx = 1
            while idx <= msg.value / crowdSaleDragonPrice:
                mem[ceil32(calldata.size) + 128] = 0x3f07618d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(calldata.size) + 132] = msg.sender
                mem[ceil32(calldata.size) + 164] = timeToBorn + block.number
                mem[ceil32(calldata.size) + 196] = 0
                mem[ceil32(calldata.size) + 228] = 0
                mem[ceil32(calldata.size) + 260] = 0
                mem[ceil32(calldata.size) + 292] = 0
                require ext_code.size(mainContractAddress)
                call mainContractAddress.createDragon(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint240 arg6) with:
                     gas gas_remaining wei
                    args msg.sender, timeToBorn + block.number, 0, 0, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                soldDragons++
                crowdSaleDragonPrice += priceChanger
                idx = idx + 1
                continue 
    else:
        if msg.value - (15 * crowdSaleDragonPrice) > 0:
            call msg.sender with:
               value msg.value - (15 * crowdSaleDragonPrice) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if 20 != calldata.size:
            call address(stor1.field_16) with:
               value 15 * crowdSaleDragonPrice wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 1
            while idx <= 15:
                mem[96] = 0x3f07618d00000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = timeToBorn + block.number
                mem[164] = 0
                mem[196] = 0
                mem[228] = 0
                mem[260] = 0
                require ext_code.size(mainContractAddress)
                call mainContractAddress.createDragon(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint240 arg6) with:
                     gas gas_remaining wei
                    args msg.sender, timeToBorn + block.number, 0, 0, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                soldDragons++
                crowdSaleDragonPrice += priceChanger
                idx = idx + 1
                continue 
        else:
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            require mem[128 len 20] != msg.sender
            if not mem[128 len 20]:
                call address(stor1.field_16) with:
                   value 15 * crowdSaleDragonPrice wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not stor8[mem[128 len 20]]:
                    call mem[128 len 20] with:
                       value 45 * crowdSaleDragonPrice / 10 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(stor1.field_16) with:
                       value (15 * crowdSaleDragonPrice) - (45 * crowdSaleDragonPrice / 10) wei
                         gas 2300 * is_zero(value) wei
                else:
                    call mem[128 len 20] with:
                       value 15 * crowdSaleDragonPrice / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(stor1.field_16) with:
                       value (15 * crowdSaleDragonPrice) - (15 * crowdSaleDragonPrice / 2) wei
                         gas 2300 * is_zero(value) wei
            idx = 1
            while idx <= 15:
                mem[ceil32(calldata.size) + 128] = 0x3f07618d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(calldata.size) + 132] = msg.sender
                mem[ceil32(calldata.size) + 164] = timeToBorn + block.number
                mem[ceil32(calldata.size) + 196] = 0
                mem[ceil32(calldata.size) + 228] = 0
                mem[ceil32(calldata.size) + 260] = 0
                mem[ceil32(calldata.size) + 292] = 0
                require ext_code.size(mainContractAddress)
                call mainContractAddress.createDragon(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint240 arg6) with:
                     gas gas_remaining wei
                    args msg.sender, timeToBorn + block.number, 0, 0, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                soldDragons++
                crowdSaleDragonPrice += priceChanger
                idx = idx + 1
                continue 
    uint8(stor1.field_8) = 0
}



}
