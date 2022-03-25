contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = block.timestamp
    return code.data[41 len 1597]
}



// =====================  Runtime code  =====================


address owner;
uint256 creationTime;
mapping of struct time;
uint256 numRecords;
array of address keys;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856474;

function keys(uint256 arg1) payable {
    require arg1 < keys.length
    return address(keys[arg1])
}

function getTime(address arg1) payable {
    return time[address(arg1)].field_256
}

function getRecord(address arg1) payable {
    return time[address(arg1)].field_0, time[address(arg1)].field_256
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
    return not not time[address(arg1)].field_256
}

function withdraw(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 0 wei
}

function getRecordAtIndex(uint256 arg1) payable {
    require arg1 < keys.length
    return address(keys[arg1]), time[address(stor4[arg1])].field_0, time[address(stor4[arg1])].field_256
}

function transfer(address arg1, address arg2) payable {
    require msg.sender == time[address(arg1)].field_0
    time[address(arg1)].field_0 = arg2 or Mask(96, 160, time[address(arg1)].field_0)
}

function register(address arg1) payable {
    require not time[address(arg1)].field_256
    time[address(arg1)].field_256 = block.timestamp
    time[address(arg1)].field_0 = msg.sender or Mask(96, 160, time[address(arg1)].field_0)
    time[address(arg1)].field_512 = keys.length
    keys.length++
    if not keys.length <= keys.length + 1:
        idx = keys.length + 1
        while keys.length > idx:
            uint256(keys[idx]) = 0
            idx = idx + 1
            continue 
    require keys.length - 1 < keys.length
    stor8A35[stor4.length] = arg1 or Mask(96, 160, stor8A35[stor4.length])
    numRecords++
}

function unregister(address arg1) payable {
    if msg.sender == time[address(arg1)].field_0:
        time[address(arg1)].field_0 = 0
        time[address(arg1)].field_256 = 0
        time[address(arg1)].field_512 = 0
        numRecords--
        require keys.length - 1 < keys.length
        require time[address(arg1)].field_512 < keys.length
        address(keys[stor2[address(arg1)].field_512]) = address(keys[keys.length])
        time[address(stor4[time[address(arg1)].field_512])].field_512 = time[address(arg1)].field_512
        keys.length--
        if not keys.length <= keys.length - 1:
            idx = keys.length - 1
            while keys.length > idx:
                uint256(keys[idx]) = 0
                idx = idx + 1
                continue 
}



}
