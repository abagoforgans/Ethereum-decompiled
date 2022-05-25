contract main {




// =====================  Runtime code  =====================


address oracleAddress;
address owner;
array of address stor2;
uint256 period;
mapping of struct project_Info;
mapping of struct members_info;

function Period() {
    return period
}

function Owner() {
    return owner
}

function Project_Info(uint256 arg1) {
    return project_Info[arg1].field_0, 
           project_Info[arg1].field_256,
           project_Info[arg1].field_512,
           bool(project_Info[arg1].field_768)
}

function Members_info(address arg1) {
    return members_info[address(arg1)].field_0, members_info[address(arg1)].field_256, bool(members_info[address(arg1)].field_512)
}

function Oracle() {
    return oracleAddress
}

function _fallback() payable {
    revert
}

function Project_ChangeOwner(uint256 arg1, address arg2) {
    require project_Info[arg1].field_0 == msg.sender
    project_Info[arg1].field_0 = arg2
}

function Project_RemoveToken(uint256 arg1, uint256 arg2) {
    require project_Info[arg1].field_0 == msg.sender
    require project_Info[arg1].field_768
    require project_Info[arg1].field_512 >= arg2
    project_Info[arg1].field_512 -= arg2
}

function AddProject(uint256 arg1, address arg2) {
    require msg.sender == owner
    require project_Info[arg1].field_256 != arg1
    project_Info[arg1].field_256 = arg1
    project_Info[arg1].field_0 = arg2
    project_Info[arg1].field_768 = 1
}

function Project_Enable(uint256 arg1) {
    require project_Info[arg1].field_0 == msg.sender
    project_Info[arg1].field_768 = not bool(project_Info[arg1].field_768) or Mask(248, 8, project_Info[arg1].field_768)
    return bool(project_Info[arg1].field_768)
}

function AddTokensToMember(address arg1, uint256 arg2) {
    require msg.sender == owner
    if period != 1:
        revert with 0, 'no es el Periodo adecuado'
    require members_info[address(arg1)].field_512
    members_info[address(arg1)].field_256 += arg2
}

function EnableMember(address arg1) {
    require msg.sender == owner
    members_info[address(arg1)].field_512 = not bool(members_info[address(arg1)].field_512) or Mask(248, 8, members_info[address(arg1)].field_512)
    return bool(members_info[address(arg1)].field_512)
}

function ReassingTokens(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if period != 3:
        revert with 0, 'no es el periodo adecuado'
    require project_Info[1].field_512 >= arg2
    project_Info[1].field_512 -= arg2
    project_Info[arg1].field_512 += arg2
}

function AddMember(address arg1, uint256 arg2) {
    require msg.sender == owner
    if members_info[address(arg1)].field_0 == msg.sender:
        revert with 0, 'ese address ya existe'
    members_info[address(arg1)].field_512 = 1
    members_info[address(arg1)].field_0 = arg1
    members_info[address(arg1)].field_256 = arg2
    stor2.length++
    stor2[stor2.length] = arg1
}

function Member_AssingTokensToProject(uint256 arg1, uint256 arg2) {
    if period != 2:
        revert with 0, 'no es el periodo correcto'
    if members_info[address(msg.sender)].field_256 < arg1:
        revert with 0, 'no tiene suficientes tokens'
    if not members_info[address(msg.sender)].field_512:
        revert with 0, 'no es un sender valido'
    if not project_Info[arg2].field_768:
        revert with 0, 'no es un projecto valido'
    require arg2 != 1
    members_info[address(msg.sender)].field_256 -= arg1
    project_Info[arg2].field_512 += arg1
}

function ChangePeriod() {
    require msg.sender == oracleAddress
    period++
    if period == 3:
        idx = 0
        while idx < stor2.length:
            mem[0] = stor2[idx]
            mem[32] = 5
            if members_info[stor2[idx]].field_256 > 0:
                require idx < stor2.length
                project_Info[1].field_512 += members_info[stor2[idx]].field_256
                mem[0] = stor2[idx]
                mem[32] = 5
                members_info[stor2[idx]].field_256 = 0
            idx = idx + 1
            continue 
    if period == 4:
        period = 1
    return period
}



}
