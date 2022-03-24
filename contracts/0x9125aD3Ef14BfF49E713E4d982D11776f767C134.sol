contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = block.timestamp
    return code.data[41 len 1663]
}



// =====================  Runtime code  =====================


address owner;
uint256 creationTime;
mapping of struct time;
uint256 numRecords;
array of address stor4;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856474;

function keys(uint256 arg1) payable {
    require arg1 < stor4.length
    return stor[code.data[1631 len 32] + arg1]
}

function getTime(address arg1) payable {
    return uint256(time[address(arg1)].field_256)
}

function getRecord(address arg1) payable {
    return time[address(arg1)].field_0, uint256(time[address(arg1)].field_256)
}

function owner() payable {
    return owner
}

function numRecords() payable {
    return numRecords
}

function creationTime() payable {
    return creationTime
}

function getOwner(address arg1) payable {
    return time[address(arg1)].field_0
}

function kill() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function update(address arg1) payable {
  stop
}

function isRegistered(address arg1) payable {
    return not not uint256(time[address(arg1)].field_256)
}

function withdraw(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 0 wei
}

function getRecordAtIndex(uint256 arg1) payable {
    require arg1 < stor4.length
    return stor[code.data[1631 len 32] + arg1], 
           time[stor[arg1 + code.data[1631 len 32]]].field_0,
           uint256(time[stor[arg1 + code.data[1631 len 32]]].field_256)
}

function transfer(address arg1, address arg2) payable {
    if time[address(arg1)].field_0 == msg.sender:
        uint256(time[address(arg1)].field_0) = arg2 or Mask(96, 160, uint256(time[address(arg1)].field_0))
    else:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
}

function unregister(address arg1) payable {
    if msg.sender == time[address(arg1)].field_0:
        time[address(arg1)].field_0 = 0
        uint256(time[address(arg1)].field_256) = 0
        uint256(time[address(arg1)].field_512) = 0
        numRecords--
        require stor4.length - 1 < stor4.length
        require uint256(time[address(arg1)].field_512) < stor4.length
        address(stor4[uint256(stor2[address(arg1)].field_512)]) = address(stor4[stor4.length])
        uint256(time[stor[uint256(time[address(arg1)].field_512) + code.data[1631 len 32]]].field_512) = uint256(time[address(arg1)].field_512)
        stor4.length--
        if not stor4.length <= stor4.length - 1:
            idx = stor4.length - 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
}

function register(address arg1) payable {
    require msg.sender == owner
    if uint256(time[address(arg1)].field_256):
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        uint256(time[address(arg1)].field_256) = block.timestamp
        uint256(time[address(arg1)].field_0) = msg.sender or Mask(96, 160, uint256(time[address(arg1)].field_0))
        uint256(time[address(arg1)].field_512) = stor4.length
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        require stor4.length - 1 < stor4.length
        stor8A35[stor4.length] = arg1 or Mask(96, 160, stor8A35[stor4.length])
        numRecords++
}



}
