﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
namespace Model
{
    public class t_Tables
    {

        Dictionary<string, bool> IsDicMyProperty = new Dictionary<string, bool>();
        /// <summary>
        /// GUID
        /// </summary>		

        private Guid GUIDValue;
        public Guid GUID
        {
            get { return GUIDValue; }
            set
            {
                GUIDValue = value;
                IsDicMyProperty[nameof(GUID)] = true;
            }
        }
        /// <summary>
        /// Title
        /// </summary>		

        private string TitleValue;
        public string Title
        {
            get { return TitleValue; }
            set
            {
                TitleValue = value;
                IsDicMyProperty[nameof(Title)] = true;
            }
        }
        /// <summary>
        /// SQL
        /// </summary>		

        private string SQLValue;
        public string SQL
        {
            get { return SQLValue; }
            set
            {
                SQLValue = value;
                IsDicMyProperty[nameof(SQL)] = true;
            }
        }
        /// <summary>
        /// TableName
        /// </summary>		

        private string TableNameValue;
        public string TableName
        {
            get { return TableNameValue; }
            set
            {
                TableNameValue = value;
                IsDicMyProperty[nameof(TableName)] = true;
            }
        }
        /// <summary>
        /// FileName
        /// </summary>		

        private string FileNameValue;
        public string FileName
        {
            get { return FileNameValue; }
            set
            {
                FileNameValue = value;
                IsDicMyProperty[nameof(FileName)] = true;
            }
        }
        /// <summary>
        /// Note
        /// </summary>		

        private string NoteValue;
        public string Note
        {
            get { return NoteValue; }
            set
            {
                NoteValue = value;
                IsDicMyProperty[nameof(Note)] = true;
            }
        }
        /// <summary>
        /// choice
        /// </summary>		

        private int choiceValue;
        public int choice
        {
            get { return choiceValue; }
            set
            {
                choiceValue = value;
                IsDicMyProperty[nameof(choice)] = true;
            }
        }
        /// <summary>
        /// insert
        /// </summary>		

        private int insertValue;
        public int insert
        {
            get { return insertValue; }
            set
            {
                insertValue = value;
                IsDicMyProperty[nameof(insert)] = true;
            }
        }
        /// <summary>
        /// update
        /// </summary>		

        private int updateValue;
        public int update
        {
            get { return updateValue; }
            set
            {
                updateValue = value;
                IsDicMyProperty[nameof(update)] = true;
            }
        }
        /// <summary>
        /// delete
        /// </summary>		

        private int deleteValue;
        public int delete
        {
            get { return deleteValue; }
            set
            {
                deleteValue = value;
                IsDicMyProperty[nameof(delete)] = true;
            }
        }
        /// <summary>
        /// strwhere
        /// </summary>		

        private int strwhereValue;
        public int strwhere
        {
            get { return strwhereValue; }
            set
            {
                strwhereValue = value;
                IsDicMyProperty[nameof(strwhere)] = true;
            }
        }
        /// <summary>
        /// CountData
        /// </summary>		

        private string CountDataValue;
        public string CountData
        {
            get { return CountDataValue; }
            set
            {
                CountDataValue = value;
                IsDicMyProperty[nameof(CountData)] = true;
            }
        }
        /// <summary>
        /// Plus
        /// </summary>		

        private int PlusValue;
        public int Plus
        {
            get { return PlusValue; }
            set
            {
                PlusValue = value;
                IsDicMyProperty[nameof(Plus)] = true;
            }
        }
        public bool IsFieldAssign(string Fieldname)
        {
            return IsDicMyProperty[nameof(Fieldname)];
        }

    }
}