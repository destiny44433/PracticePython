import xlrd

class CommonUtility:

    # def Read_Excel_File(self, rowValue, FileName):
    #
    #     wb = xlrd.open_workbook(FileName)
    #     sheet = wb.sheet_by_index(0)
    #     # sheet.cell_value(0,0)
    #
    #     for i in range(sheet.nrows):
    #         if (sheet.cell_value(i,1)) == rowValue:
    #             rowNum = i
    #             break
    #     return sheet.cell_value(rowNum,3)

    def read_pets_value(self, Rowname1, Filename1):
        wb = xlrd.open_workbook(Filename1)
        sheet = wb.sheet_by_index(0)
        for i in range(1, sheet.nrows):
            if (sheet.cell_value(i, 0)) == Rowname1:
                rownum1 = i
                break
        return sheet.cell_value(rownum1, 0)


read_pets_value("Himanshu",)