contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1638]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct time;
uint256 numRecords;
array of address stor3;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function getTotalRecords() payable {
    return numRecords
}

function getTime(address arg1) payable {
    return uint256(time[address(arg1)].field_256)
}

function getRecord(address arg1) payable {
    return address(time[address(arg1)].field_0), 
           uint256(time[address(arg1)].field_256),
           address(time[address(arg1)].field_768),
           uint256(time[address(arg1)].field_1024)
}

function numRecords() payable {
    return numRecords
}

function getOwner(address arg1) payable {
    return address(time[address(arg1)].field_0)
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function isRegistered(address arg1) payable {
    return not not uint256(time[address(arg1)].field_256)
}

function withdraw(address arg1, uint256 arg2) payable {
    if stor0 == msg.sender:
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function transfer(address arg1, address arg2) payable {
    if address(time[address(arg1)].field_0) == msg.sender:
        uint256(time[address(arg1)].field_0) = arg2 or Mask(96, 160, uint256(time[address(arg1)].field_0))
}

function update(address arg1, address arg2, uint256 arg3) payable {
    if address(time[address(arg1)].field_0) == msg.sender:
        uint256(time[address(arg1)].field_768) = arg2 or Mask(96, 160, uint256(time[address(arg1)].field_768))
        uint256(time[address(arg1)].field_1024) = arg3
}

function getRecordAtIndex(uint256 arg1) payable {
    require arg1 < stor3.length
    return address(stor[code.data[1606 len 32] + arg1]), 
           address(time[address(stor[arg1 + code.data[1606 len 32]])].field_0),
           uint256(time[address(stor[arg1 + code.data[1606 len 32]])].field_256),
           address(time[address(stor[arg1 + code.data[1606 len 32]])].field_768),
           uint256(time[address(stor[arg1 + code.data[1606 len 32]])].field_1024)
}

function register(address arg1, address arg2, uint256 arg3) payable {
    if not uint256(time[address(arg1)].field_256):
        uint256(time[address(arg1)].field_256) = block.timestamp
        uint256(time[address(arg1)].field_0) = msg.sender or Mask(96, 160, uint256(time[address(arg1)].field_0))
        uint256(time[address(arg1)].field_512) = stor3.length
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + code.data[1606 len 32] + 1
            while code.data[1606 len 32] + stor3.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require stor3.length - 1 < stor3.length
        uint256(storC257[stor3.length].field_0) = Mask(96, 0, storC257[stor3.length].field_160)
        uint256(time[address(arg1)].field_768) = arg2 or Mask(96, 160, uint256(time[address(arg1)].field_768))
        uint256(time[address(arg1)].field_1024) = arg3
        numRecords++
}

function unregister(address arg1) payable {
    if msg.sender == address(time[address(arg1)].field_0):
        address(time[address(arg1)].field_0) = 0
        uint256(time[address(arg1)].field_256) = 0
        uint256(time[address(arg1)].field_512) = 0
        address(time[address(arg1)].field_768) = 0
        uint256(time[address(arg1)].field_1024) = 0
        numRecords--
        require stor3.length - 1 < stor3.length
        require uint256(time[address(arg1)].field_512) < stor3.length
        address(stor3[uint256(stor1[address(arg1)].field_512)]) = address(stor3[stor3.length])
        uint256(time[address(stor[uint256(time[address(arg1)].field_512) + code.data[1606 len 32]])].field_512) = uint256(time[address(arg1)].field_512)
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            idx = stor3.length - 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
}



}
