contract main {


// =======================  Init code  ======================


array of struct stor0;
array of struct stor1;

function _fallback() {
    stor1.length = 1
    if not stor1.length <= 1:
        idx = 2
        while 2 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor0.length = 1
    if not stor0.length <= 1:
        idx = 4
        while 4 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            stor0[idx].field_768 = 0
            idx = idx + 4
            continue 
    return code.data[232 len 2206]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of struct projects;
mapping of uint256 stor2;
address metaProjectAddress;

function projects(uint256 arg1) {
    require arg1 < projects.length
    return projects[arg1].field_0, projects[arg1].field_256
}

function MetaProject() {
    return metaProjectAddress
}

function ActualShareManager() {
    require 0 < stor0.length
    return actualShareManagerAddress
}

function ActualTokenManager() {
    require 0 < stor0.length
    return actualTokenManagerAddress
}

function ActualCommitteeRoom() {
    require 0 < stor0.length
    return actualCommitteeRoomAddress
}

function _fallback() payable {
    revert 
}

function revisions(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768
}

function addMetaProject(address arg1) {
    require 0 < stor0.length
    if actualCommitteeRoomAddress != msg.sender:
        require 0 < stor0.length
        require not actualCommitteeRoomAddress
    metaProjectAddress = arg1
}

function addProject(address arg1) {
    require 0 < stor0.length
    if actualCommitteeRoomAddress != msg.sender:
        require 0 < stor0.length
        require not actualCommitteeRoomAddress
    if not stor2[address(arg1)]:
        projects.length++
        if not projects.length <= projects.length + 1:
            idx = 2 * projects.length + 1
            while 2 * projects.length > idx:
                projects[idx].field_0 = 0
                projects[idx].field_256 = 0
                idx = idx + 2
                continue 
        require projects.length < projects.length
        stor2[address(arg1)] = projects.length
        projects[projects.length].field_0 = arg1
        projects[projects.length].field_256 = block.timestamp
        emit NewProject(arg1);
}

function upgrade(address arg1, address arg2, address arg3) {
    require 0 < stor0.length
    if actualCommitteeRoomAddress != msg.sender:
        require 0 < stor0.length
        require not actualCommitteeRoomAddress
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 4 * stor0.length + 1
        while 4 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            stor0[idx].field_768 = 0
            idx = idx + 4
            continue 
    require stor0.length < stor0.length
    if arg1:
        stor0[stor0.length].field_0 = arg1
    else:
        require 0 < stor0.length
        stor0[stor0.length].field_0 = actualCommitteeRoomAddress
    if arg2:
        stor0[stor0.length].field_256 = arg2
    else:
        require 0 < stor0.length
        stor0[stor0.length].field_256 = actualShareManagerAddress
    if not arg3:
        require 0 < stor0.length
        stor0[stor0.length].field_512 = actualTokenManagerAddress
        stor0[stor0.length].field_768 = block.timestamp
    else:
        stor0[stor0.length].field_512 = arg3
        stor0[stor0.length].field_768 = block.timestamp
        require 0 < stor0.length
    actualCommitteeRoomAddress = stor0[stor0.length].field_0
    actualShareManagerAddress = stor0[stor0.length].field_256
    actualTokenManagerAddress = stor0[stor0.length].field_512
    uint256(stor0.field_768) = stor0[stor0.length].field_768
    emit Upgrade(address(arg1), address(arg2), arg3, stor0.length);
    return stor0.length
}



}
