contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1530]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct time;
uint256 numRecords;
array of address stor3;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function getTotalRecords() payable {
    return numRecords
}

function getTime(address arg1) payable {
    return time[address(arg1)].field_256
}

function getRecord(address arg1) payable {
    return time[address(arg1)].field_0, time[address(arg1)].field_256
}

function numRecords() payable {
    return numRecords
}

function getOwner(address arg1) payable {
    return time[address(arg1)].field_0
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function update(address arg1) payable {
  stop
}

function isRegistered(address arg1) payable {
    return not not time[address(arg1)].field_256
}

function withdraw(address arg1, uint256 arg2) payable {
    if stor0 == msg.sender:
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function getRecordAtIndex(uint256 arg1) payable {
    require arg1 < stor3.length
    return address(stor3[arg1]), time[address(stor3[arg1])].field_0, time[address(stor3[arg1])].field_256
}

function transfer(address arg1, address arg2) payable {
    if time[address(arg1)].field_0 == msg.sender:
        time[address(arg1)].field_0 = arg2 or Mask(96, 160, time[address(arg1)].field_0)
    else:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
}

function unregister(address arg1) payable {
    if msg.sender == time[address(arg1)].field_0:
        time[address(arg1)].field_0 = 0
        time[address(arg1)].field_256 = 0
        time[address(arg1)].field_512 = 0
        numRecords--
        require stor3.length - 1 < stor3.length
        require time[address(arg1)].field_512 < stor3.length
        address(stor3[stor1[address(arg1)].field_512]) = address(stor3[stor3.length])
        time[address(stor3[time[address(arg1)].field_512])].field_512 = time[address(arg1)].field_512
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            idx = stor3.length - 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
}

function register(address arg1) payable {
    if time[address(arg1)].field_256:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        time[address(arg1)].field_256 = block.timestamp
        time[address(arg1)].field_0 = msg.sender or Mask(96, 160, time[address(arg1)].field_0)
        time[address(arg1)].field_512 = stor3.length
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
        require stor3.length - 1 < stor3.length
        storC257[stor3.length] = arg1 or Mask(96, 160, storC257[stor3.length])
        numRecords++
}



}
